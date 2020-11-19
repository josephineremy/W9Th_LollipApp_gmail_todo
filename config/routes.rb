Rails.application.routes.draw do
  root 'emails#index'
  devise_for :users
resources :books, only: [:create, :index]
resources :tasks
resources :emails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
