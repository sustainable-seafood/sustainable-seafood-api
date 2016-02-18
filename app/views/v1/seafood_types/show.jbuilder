json.seafood_type do
  json.id                    @seafood_type.id
  json.name                  @seafood_type.name
  json.scientific_name       @seafood_type.scientific_name
  json.city do
    json.id                  @seafood_type.city.id
    json.name                @seafood_type.city.name
  end
end
