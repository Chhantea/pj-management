Rails.application.routes.draw do
  resources :teams
  resources :projects
  as :user do
    put '/user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end
  devise_for :users, controllers:{
  	registrations: 'registrations',
  	confirmations: 'confirmations'
  }
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end