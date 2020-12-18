Rails.application.routes.draw do
 root 'blogs#index'
 get 'show' => 'blogs#show'
 get 'contact' => 'static_pages#contact'
end
