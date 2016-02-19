json.seafood do
  json.id                              @seafood.id
  json.name                            seafood.name
  json.sustainability_level            @seafood.sustainability_level
  json.species do
    json.id                            @seafood.species.id
    json.name                          @seafood.species.name
  end
end
