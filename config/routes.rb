Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'home#index'
  get 'saloon/:id', to: 'saloons#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
