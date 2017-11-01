Rails.application.routes.draw do
  resources :profiles
  root 'welcome#welcome'

  get 'user/show'

  get 'welcome/welcome'

  resources :flares
  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :users, :only => [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
