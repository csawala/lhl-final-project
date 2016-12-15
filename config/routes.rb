Rails.application.routes.draw do
  root 'application#index'

  resources :charities, only: [:index, :show, :create]

  resources :dashboard, only: [:show, :edit]

  resources :do_good

  # ----  NEW USER ROUTES  ----
  get '/register' => 'users#new'
  post '/users'   => 'users#create'

  # ----  SESSION ROUTES  ----
  get '/login'    => 'sessions#new'
  post '/login'   => 'sessions#create'
  get '/logout'   => 'sessions#destroy'
end
