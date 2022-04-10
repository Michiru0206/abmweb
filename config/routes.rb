Rails.application.routes.draw do

  devise_for :users, controllers: {
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  # route routing 
  root to: "home#index"

  get 'diary/index'
  get 'todos/index'
  get 'home/index'
  
  #get '/sign_in', to: 'todos#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
