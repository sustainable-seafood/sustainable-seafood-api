Species.create!([
  { name: 'Salmon'},
  { name: 'Tuna'},
  { name: 'Groupers'}
])
Seafood.create!([
  {
    name: 'Atlantic Salmon',
    species_id: Species.find_by_name('Salmon').id,
    harvesting_method: 'farmed',
    source_location: 'US',
    facts: ['This is a cool fish'],
    sustainability_level: 'green',
    search_terms: ['Atlantic Salmon']
  },
  {
    name: 'Bluefin Tuna',
    species_id: Species.find_by_name('Tuna').id,
    harvesting_method: 'wild',
    source_location: 'JP',
    facts: ['This is a boring fish'],
    sustainability_level: 'yellow',
    search_terms: ['Bluefin Tuna']
  },
  {
    name: 'Giant Grouper',
    species_id: Species.find_by_name('Groupers').id,
    harvesting_method: 'farmed',
    source_location: 'HK',
    facts: ['The species is carnivorous so wild fish are used to product fish feed'],
    sustainability_level: 'green',
    search_terms: ['Giant Grouper']
  }
])
