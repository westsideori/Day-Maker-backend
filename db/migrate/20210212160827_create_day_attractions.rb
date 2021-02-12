class CreateDayAttractions < ActiveRecord::Migration[6.1]
  def change
    create_table :day_attractions do |t|
      t.integer :day_id
      t.integer :attraction_id

      t.timestamps
    end
  end
end
