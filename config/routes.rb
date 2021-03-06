Rails.application.routes.draw do
  resources :artists, only: [:index, :new, :create, :show]
  resources :instruments, only: [:index]
  resources :artist_instruments, only: [:new, :create]
end
