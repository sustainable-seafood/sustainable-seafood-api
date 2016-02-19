FactoryGirl.define do
  factory :seafood do
    name 'Atlantic salmon'
    sustainability_level 'green'
    facts ['This is a cool fish']
    harvesting_method 'wild'
    source_location 'US'
  end
end
