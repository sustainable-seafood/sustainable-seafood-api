class CreateSeafoodTypes < ActiveRecord::Migration
  def change
    create_table :seafood_types do |t|
      t.string :name
      t.string :scientific_name
      t.string :search_terms
      t.string :picture_url

      t.timestamps null: false
    end
  end
end
