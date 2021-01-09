Rails.application.routes.draw do
  devise_for :users
 root 'blogs#index'
 get 'show' => 'blogs#show'
 get 'contact' => 'static_pages#contact'
 resources :users
 resources :blogs, only: [:create, :destroy]
end
