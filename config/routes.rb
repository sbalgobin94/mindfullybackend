Rails.application.routes.draw do
  resources :goals
  resources :logs
  resources :moods
  resources :journals
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
