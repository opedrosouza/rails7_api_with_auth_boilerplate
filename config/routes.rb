# frozen_string_literal: true
# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get "health_check", to: "health_check#index"

  # Create and Edit Accounts
  resources :registrations, only: %i[create update]
end
