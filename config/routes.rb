Rails.application.routes.draw do

  get 'contact/new'

  get 'contact/create'

  resources :articles

  devise_for :users
  get 'users/:id' => 'users#show', :as => :user
  get 'users/edit' => 'users#edit'
  patch 'users/:id' => 'users#update'
  get '/users' => 'users#index'
  root :to => 'staticpage#homepage'

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

#Pages statiques

  get '/about' => 'staticpage#about'
  get '/articles' => 'articles#index'
  get '/contact' => 'staticpage#contact'

end
