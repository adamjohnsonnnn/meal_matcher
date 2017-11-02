class Matching < ActiveRecord::Base

  validates :origin, :destination, presence: true
  belongs_to :meal_maker, class_name: "User"
  belongs_to :meal_recipient, class_name: "User"


def self.create_matching(params)

  @matching = Matching.new(params)

  gmaps = GoogleMapsService::Client.new
  origins = @matching.origin
  destinations = @matching.destination

  matrix = gmaps.distance_matrix(origins, destinations,
    mode: 'driving',
    language: 'en-AU',
    avoid: 'tolls',
    units: 'imperial')

  @matching.distance = matrix[:rows][0][:elements][0][:distance][:value]
  @matching.travel_time = matrix[:rows][0][:elements][0][:duration][:value]
  @matching.save

  return @matching

end

def self.match_users
  @users = User.all.to_a
  matching_users = []

  @users.each do |user|
    abridged_users = @users - [user]

    abridged_users.each do |matched_user|
      @matching = Matching.create_matching(origin: user.home_address, destination: matched_user.home_address)
      @matching.meal_maker = user
      @matching.meal_recipient = matched_user
      @matching.determine_match

      if @matching.matching_locations == true
        matching_users << @matching
      end

    end

  end
  matching_users
end

def determine_match
  distance = self.distance.to_i
  travel_time = self.travel_time.to_i
  if distance < 12000 && travel_time < 1800
    self.matching_locations = true
  else
    self.matching_locations = false
  end
  self.save
end


end
