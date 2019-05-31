Rails.application.routes.draw do
  get 'investors', to: 'pages#investors'
  get 'influencers', to: 'pages#influencers'
  get 'careers', to: 'pages#careers'
  get 'about', to: 'pages#about'
  get 'tos', to: 'pages#tos'
  get 'privacy', to: 'pages#privacy'

  root to: 'pages#home'
  devise_for :users
end
