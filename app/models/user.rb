class User < ActiveRecord::Base
  validates :category, inclusion: { in: %w(admin user), message: "%w{value} is not a valid category" }
end
