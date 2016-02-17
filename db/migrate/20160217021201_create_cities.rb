class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.name
      t.timestamps null: false
    end
  end
end
