Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  root to: 'pages#home'
  get '/soulwine', to: 'pages#soulwine', as: 'soulwine'

  resources :wines do
    resources :wine_properties, only: [:index, :new, :create, :update] do
      member do
        get :winemaker
      end
    end
    resources :wine_connection
    resources :reviews, only: [:new, :create]
  end

    resources :wine_properties, only: [ :destroy ]
    resources :reviews, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

