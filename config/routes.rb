Rails.application.routes.draw do
  namespace :v1 do
    resources :users
    resources :sessions, only: [:create]
    delete 'sessions/:session_token' => 'sessions#destroy'
    resources :seafoods
    resources :cities do
      resources :species do
        resources :seafoods
      end
    end
  end
end
