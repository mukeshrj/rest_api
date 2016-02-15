require 'api_constraints'
RestApi::Application.routes.draw do
  root "users#index"
  devise_for :users
  resources :users
  namespace :api, defaults: {format: :json}, constraints: {subdomain: "api"}, path: "/" do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :users
      resources :sessions, :only => [:create, :destroy]
    end
  end
end
