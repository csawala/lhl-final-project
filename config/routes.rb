Rails.application.routes.draw do
  root 'application#index'

  resources :organizations, only: [:index, :show, :create, :update]
  resources :needs, only:  [:index, :new, :update]
  resources :offers, only: [:index, :new, :update]

  # ----  NEW USER ROUTES  ----
  get '/register' => 'users#new'
  post '/users'   => 'users#create'

  # ----  SESSION ROUTES  ----
  get '/login'  => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'
  # post '/auth/facebook/callback', to: 'sessions#create'
  # get '/auth/failure',            to: redirect('/login')

  # ---- DASHBOARD ----
  get '/dashboard' => 'dashboard#show'

end
