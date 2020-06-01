# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  resources :posts
  resources :films

  get 'films/index'
  namespace :rick_and_morty do
    # get 'characters', to: 'characters#index'
    resources :characters
  end

  match '/curl_example' => 'rick_and_morty/characters#curl_get_example', via: :get
  match '/curl_example' => 'rick_and_morty/characters#curl_post_example', via: :post

  match '/request' => 'rick_and_morty/characters#create', via: :post
  match '/request' => 'rick_and_morty/characters#create', via: :get
end
