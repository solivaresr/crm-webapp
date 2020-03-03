# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'statistics/index'
  get 'results/index'
  post 'sessions/login'
  get 'sessions/logout'

  resources :policies
  resources :clients
  resources :comunes
  resources :products
  resources :sale_executives
  resources :regions
  resources :statistics do
    collection do
      get 'sales_by_product(/:id)', to: 'statistics#sales_by_product', as: :by_product
      get 'clients_by_executive(/:id)', to: 'statistics#clients_by_executive', as: :by_executive
    end
  end

  root 'sessions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
