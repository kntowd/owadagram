Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  
  #Userコントローラーに追加している===================
   devise_scope :user do
    get 'users/:id/show' => 'users/registrations#show'
  end
  #===================================================
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end
  
  get "/" => "tweets#index"
  get "tweets/new" => "tweets#new"
  post "tweets/create" => "tweets#create"
  get "tweets/:id/show" => "tweets#show"
  delete "tweets/:id/destroy" => "tweets#destroy"
  get "tweets/:id/edit" => "tweets#edit"
  post "tweets/:id/update" => "tweets#update"
  
 end
