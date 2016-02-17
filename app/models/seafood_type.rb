class SeafoodType < ActiveRecord::Base
  belongs_to :city
  has_many :seafoods
end
