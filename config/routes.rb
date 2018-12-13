Rails.application.routes.draw do
  devise_for :users
  get 'inicio/index'
  root 'inicio#index'
  resources :grupo_eventos
  resources :eventos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
