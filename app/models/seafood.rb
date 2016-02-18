class Seafood < ActiveRecord::Base
  belongs_to :seafood_type
  belongs_to :city
end
