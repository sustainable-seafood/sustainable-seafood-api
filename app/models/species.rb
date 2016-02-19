class Species < ActiveRecord::Base
  default_scope { order('name DESC') }

  belongs_to :city

  has_many :seafoods

  validates :name, presence: true, length: { maximum: 100 }
end
