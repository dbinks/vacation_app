class Leg < ActiveRecord::Base
  validates :location_id, uniqueness: {scope: :trip_id, message: "Leg already on Trip"}
end
