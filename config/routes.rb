Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :projects, only:[:index, :new, :show, :create]
end
