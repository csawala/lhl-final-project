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
  get '/cards/:id'   => 'goods_types_organization#get'
  post '/cards'      => 'goods_types_organization#new'
  patch '/cards/:id' => 'goods_types_organization#update'

  get '/needs'        => 'needs#index'
  get '/offers'       => 'offers#index'

end
