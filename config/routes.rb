Rails.application.routes.draw do
  root :to => 'Static#homepage'

#Pages statiques

  get '/about' => 'Static#about'
  get '/blog' => 'Static#blog'
  get '/decouvrir' => 'Static#decouvrir'
  get '/promouvoir' => 'Static#promouvoir'
  get '/diffuser' => 'Static#diffuser'

  
end
