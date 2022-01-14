Rails.application.routes.draw do
  root "top#index"
  resources :movies do
    get "search", on: :collection
  end
  resources :theaters
  resource :session, only: [:create, :destroy]
  resource :account, except: :destroy
  resource :password, only: [:show, :edit, :update]
end
