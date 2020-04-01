Rails.application.routes.draw do
  devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists ,:songs
  # get "artists", to: "artists#index"
  # get "artists/:id", to: "artists#show", as: :artist
  get "bootstrap", to: "artists#bootstrap"
  root 'artists#index'
end
