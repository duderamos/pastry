Rails.application.routes.draw do

  get 'hosts/list', to: 'hosts#list'

  resources :domains 
  resources :hosts

  get 'hosts/index'
  get 'domains/index'
  get 'home/index'

  root 'home#index'
end
