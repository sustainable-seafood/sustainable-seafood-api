json.species do
  json.id                             @species.id
  json.name                           @species.name
  if @include_seafoods
    json.seafoods @species.seafoods do |seafood|
      json.id                         seafood.id
      json.name                       seafood.name
      json.sustainability_level       seafood.sustainability_level
      json.source_location            seafood.source_location
      json.harvesting_method          seafood.harvesting_method
      json.facts                      seafood.facts
      json.search_terms               seafood.search_terms
    end
  end
end
