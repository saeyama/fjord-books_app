Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords" 
  }
  resources :users, :only => [:index, :show]
  # devise_for :users
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
