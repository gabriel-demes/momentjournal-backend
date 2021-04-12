Rails.application.routes.draw do
  resources :calendars
  resources :entries
  resources :journals
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/login", to: "users#login"
  post "/signup", to: "users#signup"
  get "/me", to:"users#me"
  patch 'entries/:id/sentiment', to: 'entries#sentiment'
end
