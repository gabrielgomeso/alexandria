Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  get 'welcome/index'
  get "up" => "rails/health#show", as: :rails_health_check
  resources :books
  

  root 'welcome#index'
end
