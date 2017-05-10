Rails.application.routes.draw do
  get 'artist/index'

  get 'artist/show'

  devise_for :users
  root :to => 'staticpage#homepage'

#Pages statiques

  get '/about' => 'staticpage#about'
  get '/blog' => 'staticpage#blog'

end
