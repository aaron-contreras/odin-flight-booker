# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'flights#index'
  resources :flights, only: :index
  resources :bookings, only: :new
end
