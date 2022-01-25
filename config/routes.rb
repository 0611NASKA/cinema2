Rails.application.routes.draw do
  root "top#index"
  get "bad_request" => "top#bad_request"
  get "forbidden" => "top#forbidden"
  get "internal_server_error" => "top#internal_server_error"

  resources :movies do
    get "search", on: :collection
    resources :schedules
    resources :theaters
    resources :reservations
  end
  resources :theaters do
    resources :movies
    resources :schedules
    resources :reservations
  end
  resources :schedules do
    resource :movie
    resources :reservations
    get "search", on: :collection
  end
  resources :tickets
  resources :reservations do
    0.upto(3) do |idx|
      post "step#{idx}"
    end
  end
  resource :session, only: [:create, :destroy]
  resource :adminsession, only: [:create, :destroy]
  resource :account, except: :destroy
  resource :password, only: [:show, :edit, :update]
  namespace :admin do
    root to: "top#index"
    resources :movies do
      resources :theaters
      resources :schedules
      resources :reservations
    end
    resources :schedules do
      resources :movies
      resources :reservations
    end
    resources :reservations
  end
end
