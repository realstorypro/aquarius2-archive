Rails.application.routes.draw do
  get 'tech', to: 'pages#tech'
  get 'careers', to: 'pages#careers'
  get 'about', to: 'pages#about'
  get 'tos', to: 'pages#tos'
  get 'privacy', to: 'pages#privacy'

  root to: 'pages#home'
  devise_for :users
end
