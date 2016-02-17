Rails.application.routes.draw do
  namespace :v1 do
    resources :users
    resources :sessions, only: [:create]
    delete 'sessions/:session_token' => 'sessions#destroy'
    resources :seafoods
    resources :cities do
      resources :seafood_types do
        resources :seafood
      end
    end
  end
end
