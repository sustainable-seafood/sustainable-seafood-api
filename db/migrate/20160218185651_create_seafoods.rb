class CreateSeafoods < ActiveRecord::Migration
  def change
    create_table :seafoods do |t|
      t.belongs_to :seafood_type, foreign_key: true, index: true
      t.belongs_to :city,         foreign_key: true, index: true

      t.string :sustainability_level

      t.timestamps null: false
    end
  end
end
