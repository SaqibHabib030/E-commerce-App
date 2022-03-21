Rails.application.routes.draw do
  
root 'homepage#index'
 resources :order_items
 devise_for :users, controllers: {
   sessions: 'users/sessions'
  }
  get 'cart', to: 'cart#show'
  resources :products
  resources :admin
  resources :homepage
  resources :order_items
  resources :orders
end
