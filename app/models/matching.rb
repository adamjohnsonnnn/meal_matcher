class Matching < ActiveRecord::Base
  # Remember to create a migration!

  validates :origin, :destination, presence: true
  before_save :set_map_paramters


private

  def set_map_paramters

  end

end
