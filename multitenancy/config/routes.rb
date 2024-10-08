Rails.application.routes.draw do
  # get "profiles/show"
  # get "profiles/edit"
  # get "profiles/update"
  resources :tenants do
    resources :articles do
      resources :comments, only: [ :new, :create, :edit ]
    end
  resources :members do
    collection do
      post :invite
    end
  end
  end
  devise_for :users
  resources :profiles, only: [:show, :edit, :update]
  root "static_pages#landing_page"
  get "dashboard", to: "static_pages#dashboard"
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
