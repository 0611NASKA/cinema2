Rails.application.routes.draw do
  root "top#index"
  resources :movies do
    get "search", on: :collection
    resources :schedules
    resources :theaters
  end
  resources :theaters do
    resources :movies
    resources :schedules
  end
  resources :schedules do
    resource :movie
  end
  resources :tickets
  resources :reservations
  resource :session, only: [:create, :destroy]
  resource :adminsession, only: [:create, :destroy]
  resource :account, except: :destroy
  resource :password, only: [:show, :edit, :update]
  resources :admin
end
