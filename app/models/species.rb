class Species < ActiveRecord::Base
  default_scope { order('name DESC') }

  has_many :seafoods

  validates :name, presence: true, length: { maximum: 100 }
end
