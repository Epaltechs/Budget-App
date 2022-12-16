Rails.application.routes.draw do
  devise_for :users
  get 'splashes/yhello'
  resources :categories
  resources :expenses

  root 'splashes#yhello'
  authenticated :user do
    root 'categories#index', as: :authenticated_root
  end
end
