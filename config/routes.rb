Sur::Application.routes.draw do
  root 'static_pages#home'
  get '/set_city/:id', to: 'static_pages#set_city', as: 'set_city'

  devise_for :users

  TheRoleManagementPanel::Routes.mixin(self)

  resources :search, only: [:index, :create]

  #admin routes
  namespace(:admin) do
    resources :instruments
    resources :instrument_types
    resources :addresses
  end
end
