Rails.application.routes.draw do

  

<<<<<<< HEAD
  resources :comments
=======
  resources :user_friends
>>>>>>> stubbing
  resources :user_study_rooms
  resources :categories
  resources :locations
  resources :study_rooms
  resources :users
  
  
  get 'sessions/new' => 'sessions#new', as: 'login'
  post 'sessions/new' => 'sessions#create'

  # get 'users/new' => 'users#new'
  # post 'users' => 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
