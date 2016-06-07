class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.integer :location_id
      t.integer :trip_id

      t.timestamps

    end
  end
end
