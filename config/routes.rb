Rails.application.routes.draw do
  root 'home#index'
  resources 'projects', only:[:new, :create]
end
