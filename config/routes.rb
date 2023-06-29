Rails.application.routes.draw do
  get 'admin'=>'admin#index'
  controller :sesssions do
    get 'login'=>:new
    post 'login'=>:create
    delete 'logout'=>:destroy
  end
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
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
