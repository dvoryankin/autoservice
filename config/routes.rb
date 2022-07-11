Rails.application.routes.draw do
  root 'welcome#index'
  resources :orders
  resources :services
  resources :performers
  resources :categories
end
