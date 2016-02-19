class User < ActiveRecord::Base
  has_secure_password

  has_many :sessions

  validates :category, presence: true, on: [:create], inclusion: { in: %w(admin user), message: "%w{value} is not a valid category" }
  validates :email,    presence: true, on: [:create]
  validates :password, presence: true, on: [:create]
end
