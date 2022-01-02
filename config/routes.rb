Rails.application.routes.draw do
  resources :legal_texts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # custom public views
  root "front#index"

  # resources

  # authentication

  # API

  # Custom error pages
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
