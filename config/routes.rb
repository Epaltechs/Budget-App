# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'pages/yhello'
  # mount Rswag::Ui::Engine => '/api-docs'
  # mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#yhello'
end
