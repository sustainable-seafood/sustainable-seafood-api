class CreateSeafoods < ActiveRecord::Migration
  def change
    create_table :seafoods do |t|
      t.belongs_to :species, foreign_key: true, index: true

      t.string :name
      t.string :sustainability_level
      t.string :source_location
      t.string :harvesting_method
      t.string :facts, array: true, default: []

      t.timestamps null: false
    end
  end
end
