Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#welcome'
  get 'auth/facebook/callback' => 'sessions#create'

  resources :categories do 
  	resources :products, only: [:index, :show]
  end

  resources :carts do 
  	resources :line_items, only: [:index, :show]
  end

  resources :orders
  resources :line_items
  resources :users, only: [:index, :new, :create, :destroy]

  scope :admin do 
  	resources :products, only: [:new, :create]
  end
end
