class Location < ActiveRecord::Base
  validates_presence_of :map_name, :latitude, :longitude
  validates_uniqueness_of :map_name

  def denormalized_name
    self.map_name.gsub('-', ' ')
  end

end