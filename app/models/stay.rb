class Stay < ActiveRecord::Base

  validates :hotel_id, uniqueness: {scope: :leg_id, message: "already exists"}

  validates :rating, numericality:{ greater_than_or_equal_to: 0, less_than_or_equal_to: 5}

  validates :description, length: { minimum: 2}

  belongs_to:user
  belongs_to(:hotel, :class_name => "Hotel", :foreign_key => "hotel_id")
end
