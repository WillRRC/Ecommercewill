Rails.application.routes.draw do
    root "sessions#index"

    get '/adminlogin' => 'sessions#new'
    post '/adminlogin' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
    get '/admindash' => 'admindash#admindash'
    get '/signup' => 'admins#new'
    post '/admins' => 'admins#create'
  end
