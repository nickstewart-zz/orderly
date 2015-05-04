Rails.application.routes.draw do
  root 'orders#index'
  
  get 'orders/' => 'orders#index'
  get 'orders/:id' => 'orders#show', as: 'order'
  get 'orders/:id/edit' => 'orders#edit', as: 'edit_order'
end
