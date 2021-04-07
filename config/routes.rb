Rails.application.routes.draw do
  resources :calendars
  resources :entries
  resources :journals
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  patch 'entries/:id/sentiment', to: 'entries#sentiment'
end
