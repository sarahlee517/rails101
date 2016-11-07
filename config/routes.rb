Rails.application.routes.draw do
  devise_for :users
   resources :groups do
   	member do
   		post :join
   		post :quit
   	end
   	resources :posts do
   		collection do
	   		get :hot
	   	end
   	end
   end
   root 'groups#index'
end
