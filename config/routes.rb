# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'homes#top'
  resources :books
end
