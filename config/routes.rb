Rails.application.routes.draw do
  root 'application#index'

  resources :organizations, only: [:index, :show, :create, :update]

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

  # ---- NEEDS / OFFERS ----
  get '/needs'    => 'needs#index'
  post '/needs'   => 'needs#new'
  patch '/needs'  => 'needs#update'

  get '/offers'   => 'offers#index'
  post '/offers'  => 'offers#new'
  patch '/offers' => 'offers#update'
end
