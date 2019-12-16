Rails.application.routes.draw do

resources :shops
devise_for :users
devise_scope :user do
    root :to => "devise/sessions#new"
end

resources :recipes do
  resources :comments
end
resources :recipe_likes, only: [:create, :destroy]
end
