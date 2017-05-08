Rails.application.routes.draw do
  resources :user_study_rooms
  resources :categories
  resources :locations
  resources :study_rooms
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
