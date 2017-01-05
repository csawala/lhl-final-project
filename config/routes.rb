Rails.application.routes.draw do
  root 'application#index'

  resources :organizations, only: [:index, :show, :create, :update]

  # resources :dashboard, only: [:show, :update]

  # resources :do_good

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
  # patch '/dashboard/updatecard' => 'dashboard#updatecard'
  post '/dashboard/needs' => 'dashboard#newneed'
  post '/dashboard/offers' => 'dashboard#newoffer'
  patch '/dashboard/cards' => 'dashboard#updatecard'

  # ---- NEEDS / OFFERS ----
  get '/needs'   => 'needs#index'
  post '/needs'  => 'needs#new'

  get '/offers' => 'offers#index'
  patch '/offers' => 'offers#update'
end
