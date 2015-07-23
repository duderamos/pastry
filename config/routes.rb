Rails.application.routes.draw do

  get 'hosts/list', to: 'hosts#list'
  resources :hosts

  get 'hosts/index'
  root 'hosts#index'
end
