Rails.application.routes.draw do

  resources :articles

  devise_for :users
  get 'users/:id' => 'users#show', :as => :user
  get 'users/edit' => 'users#edit'
  patch 'users/:id' => 'users#update'
  get '/users' => 'users#index'
  root :to => 'staticpage#homepage'

  match '/contact',     to: 'contact#new',             via: 'get'
  resources "contact", only: [:new, :create]

#Pages statiques

  get '/about' => 'staticpage#about'
  get '/articles' => 'articles#index'

end
