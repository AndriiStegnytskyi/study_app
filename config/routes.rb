Rails.application.routes.draw do

 root 'blogs#index'
 get 'show' => 'blogs#show'
 get 'contact' => 'static_pages#contact'
 
devise_for :users 
devise_scope :user do 
	get '/users/sign_out' => 'devise/sessions#destroy'
end

 resources :blogs, only: [:create, :destroy]
end
