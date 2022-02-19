Rails.application.routes.draw do
  devise_for :users
  root 'tops#show'
  
  namespace :users do
    resources :posts
  end

  resource :top, only: %i[show]
  resource :about, only: %i[show]
end
