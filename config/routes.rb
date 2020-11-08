Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users
  root to: 'pages#home'

  ressources :wines, only: [ :index, :show, :edit, :update ] do
    ressources :properties, only: [ :index ]
    ressources :review, only: [ :new, :create ]
  end
  ressources :reviews, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


  # get 'property_preferences/create'
  # get 'properties/index'
  # get 'wines/index'
  # get 'wines/show'
  # get 'wines/edit'
