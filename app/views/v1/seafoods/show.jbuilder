json.seafood do
  json.id                              @seafood.id
  json.sustainability_level            @seafood.sustainability_level
  json.city do
    json.id                            @seafood.city.id
    json.name                          @seafood.city.name
  end
  json.species do
    json.id                            @seafood.species.id
    json.name                          @seafood.species.name
    json.scientific_name               @seafood.species.scientific_name
  end
end
