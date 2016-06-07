class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :place
      t.string :place_image

      t.timestamps

    end
  end
end
