class Matching < ActiveRecord::Base

  validates :origin, :destination, presence: true


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
