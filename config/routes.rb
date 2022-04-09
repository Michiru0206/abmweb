Rails.application.routes.draw do

  devise_for :users
  # route routing 
  root to: "todos#index"

  get 'diary/index'
  get 'todos/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
