Sur::Application.routes.draw do
  root 'pages#home'

  devise_for :users

  resources :search, only: [:index, :create]

  #admin routes
  namespace(:admin) do
    resources :instruments
    resources :instrument_types
    resources :addresses
  end
end
