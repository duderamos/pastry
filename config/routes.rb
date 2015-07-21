Rails.application.routes.draw do

  resources :hosts

  get 'hosts/index'

  root 'hosts#index'
end
