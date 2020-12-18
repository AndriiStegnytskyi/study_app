Rails.application.routes.draw do
	root 'static_pages#contact'
 get 'contact' => 'static_pages#contact'
end
