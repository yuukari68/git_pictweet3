Rails.application.routes.draw do
  devise_for :users
     root  'tweets#index'   
  resources :tweets  do
        resources :comments, only: [:create]
  end#tweets_controllerに対してのresourcesメソッド
  resources :users, only: [:show]      
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
