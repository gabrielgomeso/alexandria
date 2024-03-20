Rails.application.routes.draw do
  get 'welcome/index'
  get "up" => "rails/health#show", as: :rails_health_check
  resources :books

  root 'welcome#index'
end
