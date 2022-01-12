Rails.application.routes.draw do
  resources :tokkens
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end
  post '/graphql', to: 'graphql#execute'

  resources :answers, except: %i[update edit]
  put '/answers/', to: 'answers#update'
  resources :comments
  resources :contentwebs do
    resources :pages
  end
  devise_for :users, :path => 'accounts'
  resources :users do
       resources :words
  end

  resources :tokkens

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  resources :webhooks, only: [:create]

  scope controller: :home do
    get :about
  end
  scope controller: :static do
    get :help
    get :contact
    get :product
    get :dashboard
    get :admin_dashboard
  end
  scope controller: :admin do
    get :index
  end
  resources :notifications
end
