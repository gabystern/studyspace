Rails.application.routes.draw do




  resources :searches
  resources :comments

  resources :user_friends

  resources :user_study_rooms
  resources :categories
  resources :locations
  resources :study_rooms
  resources :users

  get 'sessions/new' => 'sessions#new', as: 'login'
  post 'sessions/new' => 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  delete 'user_study_rooms', to: 'user_study_rooms#destroy', as: 'leave'
  root to: 'welcome#index'
  get '/analytics' => 'welcome#analytics', as: 'analytics'


  # get 'users/new' => 'users#new'
  # post 'users' => 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
