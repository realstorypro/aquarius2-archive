Rails.application.routes.draw do
  # PWA
  get "manifest", to: "worker#manifest"
  get "worker", to: "worker#worker"

  # Pages
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

  namespace :admin do
    root to: "dashboard#index"
    resources :dashboard, only: :index

    resources :elements, component: "elements", only: %i[edit update] do
      get "pick_element", on: :collection
      get "add/:element", to: "elements#add", as: "add_element", on: :collection
      get "destroy", to: "elements#destroy", as: "destroy", on: :member
      post :reorder, on: :collection
    end

    resources :users, component: "users" do
      get "ban", on: :member
      get "unban", on: :member
      get "verify", on: :member
      get "unverify", on: :member
      get "enable_help", on: :member
      get "disable_help", on: :member
      get "enable_advanced", on: :member
      get "disable_advanced", on: :member
    end

    resources :pages, component: "pages", controller: "crud"
    resources :tags, component: "tags", controller: "crud"
    resources :categories, component: "categories", controller: "crud"
    resources :support, component: "support", only: %i[index]

    scope :settings, module: "site_settings", component: "site_settings", as: "settings"  do
      root to: "settings#all"
      resources :components, component: "site_settings_components" do
        get "enable", on: :member
        get "disable", on: :member
      end
      resource :general, controller: "general", component: "site_settings_general"
      resource :contact, controller: "contact", component: "site_settings_contact"
      resource :integration, controller: "integration", component: "site_settings_integration"

      scope :theme, controller: "theme", module: "theme", component: "site_settings_theme", as: "theme" do
        root to: "theme#all"
        resource :branding, controller: "theme_branding", component: "site_settings_theme_branding"
        resource :authentication, controller: "theme_authentication", component: "site_settings_theme_authentication"
        resource :footer, controller: "theme_footer", component: "site_settings_theme_footer"
        resource :header, controller: "theme_header", component: "site_settings_theme_header"
        resource :global, controller: "theme_global", component: "site_settings_theme_global"
        resource :homepage, controller: "theme_homepage", component: "site_settings_theme_homepage"
        resource :discussion, controller: "theme_discussion", component: "site_settings_theme_discussion"
      end
    end
  end
end
