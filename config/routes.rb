Rails.application.routes.draw do
  root "top#index"
  resources :movies do
    get "search", on: :collection
  end
end
