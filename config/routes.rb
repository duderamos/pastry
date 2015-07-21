Rails.application.routes.draw do
  get 'hosts/index'

  root 'hosts#index'
end
