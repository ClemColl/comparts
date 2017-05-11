Rails.application.routes.draw do

  resources :articles

  devise_for :users
  get 'users/:id' => 'users#show', :as => :user
  get '/users' => 'users#index'
  root :to => 'staticpage#homepage'

#Pages statiques

  get '/about' => 'staticpage#about'
  get '/articles' => 'articles#index'

end
