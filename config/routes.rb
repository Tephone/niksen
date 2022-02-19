Rails.application.routes.draw do
  devise_for :users
  root 'tops#show'
  
  namespace :users do
    resources :posts
    resources :all_posts, only: %i[index show]
  end

  resource :top, only: %i[show]
  resource :about, only: %i[show]
end
