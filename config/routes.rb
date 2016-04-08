Rails.application.routes.draw do
  get 'items/index'

  get 'items/show'

  get 'items/new'

  get 'items/create'

  get 'items/edit'

  get 'items/update'

  root to: 'welcome#index'
  resources :characters
end