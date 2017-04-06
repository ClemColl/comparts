Rails.application.routes.draw do
  root :to => 'staticpage#homepage'

#Pages statiques

  get '/about' => 'staticpage#about'
  get '/blog' => 'staticpage#blog'
  get '/decouvrir' => 'staticpage#decouvrir'
  get '/promouvoir' => 'staticpage#promouvoir'
  get '/diffuser' => 'staticpage#diffuser'


end
