Rails.application.routes.draw do
  resources :posts
  resources :legal_texts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # custom public views
  # root "front#index"
  root "front#maintenance"

  # resources

  # authentication

  # API

  # custom notifications
  # get '/notice', to: 'post#clear_message'
  # Custom error pages
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
