Rails.application.routes.draw do

 root 'blogs#index'
 get 'show' => 'blogs#show'
 get 'contact' => 'static_pages#contact'
 get 'blogs/:id/edit', to: 'blogs#edit', as: :edit_blog
 
devise_for :users 
devise_scope :user do 
	get '/users/sign_out' => 'devise/sessions#destroy'
end

 resources :blogs, only: [:index, :create, :update, :destroy, :edit]
end
