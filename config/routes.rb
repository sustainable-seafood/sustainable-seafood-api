Rails.application.routes.draw do
  namespace :v1 do
    resources :users
    resources :sessions, only: [:create]
    delete 'sessions/:session_token' => 'sessions#destroy'
    resources :species do
      resources :seafoods, only: [:index]
    end
    resources :seafoods
  end
end
