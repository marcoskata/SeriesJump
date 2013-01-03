SeriesJump::Application.routes.draw do


  resources :series do  
    resources :capitulos
  end

  resources :peliculas do  
    resources :links
  end  
  
  resources :peliculas do  
    resources :comments  
  end  
  
  resources :seriess do  
    resources :coments  
  end 
  
  resources :users do
    resources :followings
  end
  
  resources :users do
    resources :followers
  end
  

  resources :users do  
    resources :seguirps  
  end  
  
    resources :users do  
    resources :seguirs  
  end  

  resources :followings
  resources :seguirps
  resources :seguirs
  resources :followers
  
 #  root :to => 'home#index'

  root to: 'static_pages#home'
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/privacy', to: 'static_pages#privacy'
  match '/terms', to: 'static_pages#terms'
  match '/usuarios' => 'home#index'
  match '/following' => 'users#following'
  match '/follower' => 'users#follower'
  match '/seguirp' => 'users#seguirp'
  match '/search' => 'peliculas#search', :as => :search
  match '/search2' => 'series#search2', :as => :search2
  
  
	match '/auth/:provider/callback' => 'sessions#create'
	match '/auth/failure' => 'sessions#failure'
	match '/signout' => 'sessions#destroy', :as => :signout
	match '/signin' => 'sessions#new', :as => :signin
	match '/signin1' => 'sessions#newother', :as => :signin1
	match '/signin2' => 'sessions#newotherother', :as => :signin2
	
	
end
