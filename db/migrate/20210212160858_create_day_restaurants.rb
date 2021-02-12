class CreateDayRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :day_restaurants do |t|
      t.integer :day_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
