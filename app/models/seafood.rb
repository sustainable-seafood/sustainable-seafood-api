class Seafood < ActiveRecord::Base
  belongs_to :species
  belongs_to :city

  validates :name,                 presence: true, length: { maximum: 200 }
  validates :source_location,      presence: true, length: { is: 2 }
  validates :sustainability_level, presence: true, inclusion: { in: %w(green yellow red), message: "%w{value} is not a valid sustainability level" }
  validates :harvesting_method,    presence: true, inclusion: { in: %w(farmed wild), message: "%w{value} is not a valid harvesting method" }
  validates :facts,                presence: true
end
