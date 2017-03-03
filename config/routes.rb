Rails.application.routes.draw do
  devise_for :admins
  root to: 'home#index'
  get '/about', to: 'about#index'
  resources :projects

end
