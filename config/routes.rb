Rails.application.routes.draw do
  resources :policies
  resources :clients
  resources :comunes
  resources :products
  resources :sale_executives
  resources :regions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
