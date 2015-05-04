Rails.application.routes.draw do
  root 'orders#index'
  
  get 'orders' => 'orders#index'
  get 'order/new' => 'orders#new', as: 'new_order'
  get 'orders/:id' => 'orders#show', as: 'order'
  get 'orders/:id/edit' => 'orders#edit', as: 'edit_order'
  patch 'orders/:id' => 'orders#update'
end
