# frozen_string_literal: true

Rails.application.routes.draw do
  get 'restaurants/new'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, only: %i[index new create]
  end
  resources :reviews, only: %i[show edit update destroy]
end
