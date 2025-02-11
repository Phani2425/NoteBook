Rails.application.routes.draw do
  resources :notes
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  # root = http://localhost:3000
  # agar ye path mile to home controller me index action ko call karna
  # here previously i was using single qoute both double and single quote acts same but the only difference is in the double quotes we need to use backslash to esacape any character
  # but in case of single quote we need it
  root "home#index"
end
