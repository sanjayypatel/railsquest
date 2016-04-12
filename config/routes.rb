Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :characters
  resources :items
  resources :games
end