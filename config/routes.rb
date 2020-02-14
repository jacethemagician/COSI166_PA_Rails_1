Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  resources :subjects
  resources :instructors
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
