json.seafoods @seafoods do |seafood|
  json.id                              seafood.id
  json.sustainability_level            seafood.sustainability_level
  json.city do
    json.id                            seafood.city.id
    json.name                          seafood.city.name
  end
  json.seafood_type do
    json.id                            seafood.seafood_type.id
    json.name                          seafood.seafood_type.name
    json.scientific_name               seafood.seafood_type.scientific_name
  end
end
