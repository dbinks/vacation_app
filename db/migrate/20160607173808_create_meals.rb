class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :restaurant_id
      t.integer :leg_id
      t.integer :rating
      t.string :description

      t.timestamps

    end
  end
end
