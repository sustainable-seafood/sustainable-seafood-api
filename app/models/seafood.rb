class Seafood < ActiveRecord::Base
  belongs_to :species

  validates :name,                 presence: true, length: { maximum: 200 }
  validates :source_location,      presence: true, length: { is: 2 }
  validates :sustainability_level, presence: true, inclusion: { in: %w(green yellow red), message: "%w{value} is not a valid sustainability level" }
  validates :harvesting_method,    presence: true, inclusion: { in: %w(farmed wild), message: "%w{value} is not a valid harvesting method" }
  validates :facts,                presence: true
  validates :search_terms,         presence: true

  before_save :sanitize_strings

  private

  def sanitize_strings
    self.name         = self.name.titleize
    name_not_included = true
    self.search_terms.each do |search_term|
      search_term       = search_term.titleize
      name_not_included = false if search_term == self.name
    end
    self.search_terms.push self.name if name_not_included
  end
end
