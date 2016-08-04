Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :projects, only:[:index, :new, :show, :create] do
    member do
      post 'members', to: 'projects#new_member'
    end
  end
  resources :categories, only:[:show]
end
