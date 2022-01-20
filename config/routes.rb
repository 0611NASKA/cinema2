Rails.application.routes.draw do
  root "top#index"
  resources :movies do
    get "search", on: :collection
    resources :theaters
  end
  resources :theaters do
    get "search", on: :collection
    resources :movies
  end
  resource :session, only: [:create, :destroy]
  resource :adminsession, only: [:create, :destroy]
  resource :account, except: :destroy
  resource :password, only: [:show, :edit, :update]
  resources :admin
end
