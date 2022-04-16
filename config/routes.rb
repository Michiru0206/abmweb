Rails.application.routes.draw do
  resources :diaries
  resources :tasks
  devise_for :users, controllers: {
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  # route routing 
  root to: "home#index"

  get 'diaries/index'
  get 'todos/index'
  get 'home/index'
  get 'todos/new'
  get 'home/diary'

  resources :todos
  

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
