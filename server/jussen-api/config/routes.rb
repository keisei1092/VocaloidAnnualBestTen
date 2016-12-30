Rails.application.routes.draw do
  resources :like_selections
  resources :like_songs
  resources :selections
  resources :users
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
