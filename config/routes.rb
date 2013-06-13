Scrumboard::Application.routes.draw do

  resources :users, only: [:create]
  resource :user

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

end
