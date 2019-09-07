Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'doctors#index'
  resources :patients
  resources :doctors
  resources :specialities
  resources :appointments
end
