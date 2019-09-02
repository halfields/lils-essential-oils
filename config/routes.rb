Rails.application.routes.draw do
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#welcome'
  get 'auth/facebook/callback' => 'sessions#create'
  get '/about' => 'static_pages#about'
  get '/contacts' => 'static_pages#contacts'
  get '/signup' => 'users#new'

  resources :categories do 
  	resources :products
  end

  resources :carts do 
  	resources :line_items, only: [:index, :show]
  end

  resources :orders
  resources :line_items, only: [:new, :create, :index, :destroy]
  resources :users, only: [:new, :create, :show]

  namespace :admin do 
  	resources :users
  end
end
