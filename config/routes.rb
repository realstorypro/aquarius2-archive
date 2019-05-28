Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'pages/careers'
  get 'pages/tos'
  get 'pages/privacy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
