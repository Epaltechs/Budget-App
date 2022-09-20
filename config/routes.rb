Rails.application.routes.draw do
  resources :categories
  devise_for :users
  get 'splashes/yhello'
  # mount Rswag::Ui::Engine => '/api-docs'
  # mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'splashes#yhello'
end
