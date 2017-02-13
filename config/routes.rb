Rails.application.routes.draw do

  resources :attachments, only: [:create,:destroy,:new,:show]
  resources :products
  resources :in_shopping_carts, only: [:create, :destroy]
  devise_for :users

post "/emails/create", as: :create_email

get "carrito", to: "shopping_carts#show"
  authenticated :user do
		root 'welcome#index'
	end
	unauthenticated :user do
		devise_scope :user do
			root 'welcome#unregistered', as: :unregistered_root
		end
	end
end
