SeriesJump::Application.routes.draw do
  resources :series

  resources :peliculas

   resources :users

   root :to => 'home#index'

	match '/auth/:provider/callback' => 'sessions#create'
	match '/auth/failure' => 'sessions#failure'
	match '/signout' => 'sessions#destroy', :as => :signout
	match '/signin' => 'sessions#new', :as => :signin
	match '/signin1' => 'sessions#newother', :as => :signin1
end
