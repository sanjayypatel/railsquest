Rails.application.routes.draw do
  get 'snippets/index'

  get 'snippets/show'

  root to: 'welcome#index'
  resources :characters
  resources :items
  resources :games
  resources :snippets
end