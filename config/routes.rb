Rails.application.routes.draw do
  get 'pages/contact'
  get 'contact', to: 'pages#contact', as: 'contact'
  get 'about', to: 'pages#about', as: 'about'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
