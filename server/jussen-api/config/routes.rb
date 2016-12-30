Rails.application.routes.draw do
  resources :selections
  resources :users
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
