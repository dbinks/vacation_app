class Location < ActiveRecord::Base

  validates :place, uniqueness:true
  validates :place_image, length: { minimum: 2}
end
