Rails.application.routes.draw do
  root 'sessions#new'
  resources :sessions, only: :create
  get 'rooms/show'
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
