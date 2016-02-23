FactoryGirl.define do
  factory :seafood do
    name 'Atlantic Salmon'
    sustainability_level 'green'
    facts ['This is a cool fish']
    search_terms ['Atlantic Salmon']
    harvesting_method 'wild'
    source_location 'US'
  end
end
