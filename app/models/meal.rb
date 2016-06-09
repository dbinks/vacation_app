class Meal < ActiveRecord::Base

  validates :restaurant_id, uniqueness: {scope: :leg_id, message: "Meal already exists"}

  validates :rating, numericality:{ greater_than_or_equal_to: 0, less_than_or_equal_to: 5}

  validates :description, length: { minimum: 2}

  belongs_to:user
  belongs_to(:restaurant, :class_name => "Restaurant", :foreign_key => "restaurant_id")
end
