city = City.create!(name: 'Hong Kong')
Species.create!([{ name: 'Salmon', city_id: city.id}, { name: 'Tuna', city_id: city.id }])
Seafood.create!([{ name: 'Atlantic salmon', species_id: Species.find_by_name('Salmon').id, harvesting_method: 'farmed', source_location: 'US', facts: ['This is a cool fish'], sustainability_level: 'green'}, { name: 'Bluefin Tuna', species_id: Species.find_by_name('Tuna').id, harvesting_method: 'wild', source_location: 'JP', facts: ['This is a boring fish'], sustainability_level: 'yellow'}])
