class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :rating
      t.string :hotel_image
      t.integer :location_id

      t.timestamps

    end
  end
end
