json.species do
  json.id                    @species.id
  json.name                  @species.name
  json.city do
    json.id                  @species.city.id
    json.name                @species.city.name
  end
end
