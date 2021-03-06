json.seafood do
  json.id                              @seafood.id
  json.name                            @seafood.name
  json.sustainability_level            @seafood.sustainability_level
  json.source_location                 @seafood.source_location
  json.harvesting_method               @seafood.harvesting_method
  json.facts                           @seafood.facts
  json.search_terms                    @seafood.search_terms
  json.species do
    json.id                            @seafood.species.id
    json.name                          @seafood.species.name
  end
end
