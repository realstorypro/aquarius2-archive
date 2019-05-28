Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'pages/careers'
  get 'pages/tos'
  get 'pages/privacy'

  root to: 'pages#home'
  devise_for :users
end
