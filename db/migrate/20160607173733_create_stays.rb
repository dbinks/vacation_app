class CreateStays < ActiveRecord::Migration
  def change
    create_table :stays do |t|
      t.integer :hotel_id
      t.integer :leg_id
      t.integer :rating
      t.string :description

      t.timestamps

    end
  end
end
