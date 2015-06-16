Rails.application.routes.draw do
  resource :session
  resources :users

  root 'orders#index'
  
  resources :orders do
    resources :products
  end

  get 'signin' => 'sessions#new'

  # get 'orders' => 'orders#index'
  # get 'order/new' => 'orders#new', as: 'new_order'
  # get 'orders/:id' => 'orders#show', as: 'order'
  # get 'orders/:id/edit' => 'orders#edit', as: 'edit_order'
  # patch 'orders/:id' => 'orders#update'
end
