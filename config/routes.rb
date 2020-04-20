Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks',:registrations => 'users/registrations',
  :sessions => 'users/sessions' }
devise_scope :user do
  get "user/:id", :to => "users/registrations#detail"
  get "signup", :to => "users/registrations#new"
  get "login", :to => "users/sessions#new"
  get "logout", :to => "users/sessions#destroy"
end
root to: 'facebook#index'
get 'facebook/:id',to:'facebook#user'  
get 'facebook/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
