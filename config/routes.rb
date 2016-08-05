Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :projects, only:[:index, :new, :show, :create] do
    resources :memberships, only: [:show]
    member do
      post 'members', to: 'projects#new_member'
    end
    resources :memberships, only: [:create]
  end
  resources :memberships, only: [:show] do
    member do
      post 'approve'
    end
  end
  resources :categories, only:[:show]
end
