class Restaurant < ActiveRecord::Base

  validates :name, uniqueness: {scope: :location_id, message: "Restaurant already exists"}

  validates :restaurant_image, length: { minimum: 2}

  belongs_to(:location, :class_name => "Location", :foreign_key => "location_id")

end
