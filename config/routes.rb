Rails.application.routes.draw do
  root 'orders#index'
  resources :orders
  resources :services
  resources :performers
  resources :service_categories
end
