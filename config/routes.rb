Rails.application.routes.draw do
  devise_for :users
  resource :top, only: %i[show]
  root 'tops#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
