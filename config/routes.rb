Rails.application.routes.draw do
  namespace :v1 do
    resources :users
    resources :seafoods
    resources :seafood_types
  end
end
