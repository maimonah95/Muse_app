Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'artists#index'
  resources :artists ,:songs
  # get "artists", to: "artists#index"
  # get "artists/:id", to: "artists#show", as: :artist
  get "bootstrap", to: "artists#bootstrap"
end
