Rails.application.routes.draw do
  root "top#index"
  get "bad_request" => "top#bad_request"
  get "forbidden" => "top#forbidden"
  get "internal_server_error" => "top#internal_server_error"

  resources :movies do
    get "search", on: :collection
    resources :schedules
    resources :theaters
    resource :reservation
  end
  resources :theaters do
    resources :movies
    resources :schedules
    resource :reservation
  end
  resources :schedules do
    resource :movie
    resource :reservation
    get "search", on: :collection
  end
  resources :tickets
  resources :reservations do
  0.upto(3) do |idx|
    post "step#{idx}"
  end
  resources :tickets
end
  resource :session, only: [:create, :destroy]
  resource :account, except: :destroy
  resource :password, only: [:show, :edit, :update]
  namespace :admin do
    root "admins#show"
    resources :movies do
      resources :theaters
      resources :schedules
      resources :reservations
    end
    resources :schedules do
      resources :movies
      resources :theaters
      resources :reservations
    end
    resources :reservations
    resource :session
  end
end
