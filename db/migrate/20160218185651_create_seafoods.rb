class CreateSeafoods < ActiveRecord::Migration
  def change
    create_table :seafoods do |t|
      t.belongs_to :seafood_type, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
