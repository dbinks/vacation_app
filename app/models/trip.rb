class Trip < ActiveRecord::Base
  validates :name, length: {minimum: 2}
  validates :name, uniqueness: { scope: :user_id}

  belongs_to:user

  has_many(:legs, :class_name => "Leg", :foreign_key => "trip_id")
end
