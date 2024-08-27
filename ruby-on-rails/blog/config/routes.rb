Rails.application.routes.draw do
  get "dashboard/index"
  devise_for :users, controllers: { sessions: "users/sessions" }
  root "dashboard#index"
  resources :articles do
    resources :comments
  end
get "my_articles", to: "articles#my_articles"
 get "dashboard", to: "dashboard#index"
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  # get "signup_page", to: "login_page#signup_page"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
