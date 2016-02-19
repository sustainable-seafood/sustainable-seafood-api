class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.belongs_to :city, foreign_key: true, index: true

      t.string :name

      t.timestamps null: false
    end
  end
end
