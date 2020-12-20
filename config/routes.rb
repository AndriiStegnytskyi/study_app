Rails.application.routes.draw do
 root 'blogs#index'
 get 'show' => 'blogs#show'
 get 'contact' => 'static_pages#contact'
 resources :users
 resources :microposts
end
