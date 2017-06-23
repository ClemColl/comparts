Rails.application.routes.draw do

  get 'articles' => 'articles#index'
  get 'articles/:id' => 'articles#show'

  devise_for :users
  get 'users/:id' => 'users#show', :as => :user
  get 'users/edit' => 'users#edit'
  patch 'users/:id' => 'users#update'
  get '/users' => 'users#index'
  get '/pros' => 'users#index_pro'
  get '/my_account' => 'users#my_account'
  root :to => 'staticpage#homepage'

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

#Pages statiques

  get '/about' => 'staticpage#about'
  get '/articles' => 'articles#index'

end
