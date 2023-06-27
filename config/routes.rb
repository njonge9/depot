Rails.application.routes.draw do
  get 'stimulus/payment'
  resources :orders
  resources :line_items
  resources :carts, only: [:show ,:destroy]
  root 'store#index', as: 'store_index'
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
