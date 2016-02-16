class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :category
      t.string :email
      t.string :password
      t.string :password_confirmation

      t.datetime :last_sign_in_at

      t.timestamps null: false
    end
  end
end
