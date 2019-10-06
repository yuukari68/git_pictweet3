Rails.application.routes.draw do
  devise_for :users
     root  'tweets#index'   
  get 'tweets' => 'tweets#index'
  get   'tweets/new'  =>  'tweets#new' 
   post  'tweets'      =>  'tweets#create'
   get   'users/:id'   =>  'users#show' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
