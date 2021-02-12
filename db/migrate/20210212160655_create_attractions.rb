class CreateAttractions < ActiveRecord::Migration[6.1]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
