Rails.application.routes.draw do
  root "top#index"
  resources :movies do
    get "search", on: :collection
  end
  resource :session, only: [:create, :destroy]
  resource :account, only: [:show, :edit, :update]
  resource :password, only: [:show, :edit, :update]
end
