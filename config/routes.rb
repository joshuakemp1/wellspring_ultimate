Practice1::Application.routes.draw do
  resources :contacts

  root :to => 'pages#home' 

  match '/home', to: 'pages#home'
  match '/portfolio', to: 'pages#portfolio'
  match '/contacts', to: 'contacts#new'

end
