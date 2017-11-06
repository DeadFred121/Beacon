Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :users, :only => [:show]


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :charges, only: [:new, :create]

  get 'thanks', to: 'charges#thanks', as: 'thanks'

  resources :profiles

  root 'welcome#welcome'

  get 'user/show'

  get 'welcome/welcome'

  resources :flares

  resources :conversations do
    resources :messages
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
