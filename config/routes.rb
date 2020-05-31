Rails.application.routes.draw do
  get 'films/index'
  resources :posts
  root 'home#index'
  #get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
