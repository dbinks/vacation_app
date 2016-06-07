class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :rating
      t.string :restaurant_image
      t.integer :location_id

      t.timestamps

    end
  end
end
