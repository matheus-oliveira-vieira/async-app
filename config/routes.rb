require 'sidekiq/web'
Rails.application.routes.draw do
  root 'home#index'
  resources :reports, only: %i[index create]
  mount Sidekiq::Web => '/sidekiq'
end

