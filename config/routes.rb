Rails.application.routes.draw do

  resources :domains 
  resources :hosts

  get 'hosts/index'
  get 'domains/index'
  get 'home/index'

  root 'home#index'
end
