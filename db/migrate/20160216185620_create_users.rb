class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :category, default: 'user'
      t.string   :email
      t.string   :password_digest
      t.datetime :last_sign_in_at

      t.timestamps null: false
    end
  end
end
