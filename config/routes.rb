Rails.application.routes.draw do
  resources :registries
  resources :coordinators
  resources :participants
  resources :enrollments
  get 'home/index'

  root 'home#index'
end
