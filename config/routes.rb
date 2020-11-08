Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # get 'property_preferences/create'
  # get 'properties/index'
  # get 'wines/index'
  # get 'wines/show'
  # get 'wines/edit'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
