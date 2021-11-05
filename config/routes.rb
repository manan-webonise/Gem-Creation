Rails.application.routes.draw do
  # get 'user_assets/index'
  # get 'user_assets/show'
  # get 'user_assets/new'
  # get 'user_assets/edit'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :user_assets
end
