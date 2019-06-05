Rails.application.routes.draw do
  get 'tech', to: 'pages#tech'
  get 'careers', to: 'pages#careers'
  get 'about', to: 'pages#about'
  get 'tos', to: 'pages#tos'
  get 'privacy', to: 'pages#privacy'

  root to: 'pages#home'
  devise_for(
      :users,
      controllers: {
          sessions: "users/sessions",
          registrations: "users/registrations",
          passwords: "users/passwords"
      }
  )

  devise_scope :user do
    get "/sign_in" => "users/sessions#new"
    get "/sign_up" => "users/registrations#new"
  end
end
