Rails.application.routes.draw do
 

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :pictures do
    resources :comments, only: [:create]
  end

  resources :users, only: [:show]
  root 'pictures#index'
end
