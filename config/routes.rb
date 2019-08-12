Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'static_pages/about'
  get 'static_pages/contacts'
  get 'sessions/new'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/edit'
  get 'orders/new'
  get 'orders/index'
  get 'home/front_page'
  get 'home/welcome'
  get 'categories/index'
  get 'categories/show'
  get 'carts/index'
  get 'carts/show'
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
