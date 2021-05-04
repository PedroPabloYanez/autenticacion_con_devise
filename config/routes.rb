Rails.application.routes.draw do
  get 'dashboards/index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  patch 'user/:id', to: 'users#update', as: 'users'
  resources :stories
  root 'stories#index'
  get 'users/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
