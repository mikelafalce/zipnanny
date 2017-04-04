Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :sittings
  resources :users
  get 'my-sittings', :to => 'sittings#my_sittings'

  root 'home#index'
end
