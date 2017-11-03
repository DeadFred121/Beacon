Rails.application.routes.draw do
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

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :users, :only => [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
