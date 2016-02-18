json.species do
  json.id                    @species.id
  json.name                  @species.name
  json.scientific_name       @species.scientific_name
  json.city do
    json.id                  @species.city.id
    json.name                @species.city.name
  end
end
