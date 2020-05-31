# frozen_string_literal: true

Rails.application.routes.draw do
  get 'films/index'
  resources :posts
  resources :films
  root 'home#index'
  # get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
