SeriesJump::Application.routes.draw do


  resources :series

  resources :peliculas

   resources :users

 #  root :to => 'home#index'

  root to: 'static_pages#home'

   
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/privacy', to: 'static_pages#privacy'
  match '/terms', to: 'static_pages#terms'
  
  
	match '/auth/:provider/callback' => 'sessions#create'
	match '/auth/failure' => 'sessions#failure'
	match '/signout' => 'sessions#destroy', :as => :signout
	match '/signin' => 'sessions#new', :as => :signin
	match '/signin1' => 'sessions#newother', :as => :signin1
	
	
end
