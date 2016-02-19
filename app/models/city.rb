class City < ActiveRecord::Base
  default_scope { order('name DESC') }

  has_many :species
  has_many :seafoods, through: :species

  validates :name, presence: true, length: { maximum: 100 }
end
