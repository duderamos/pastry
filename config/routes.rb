Rails.application.routes.draw do

  get 'hosts/list', to: 'hosts#list'

  resources :domains 
  resources :hosts

  get 'hosts/index'
  get 'domains/index'

  root 'domains#index'
end
