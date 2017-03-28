Rails.application.routes.draw do



  resources :attachments, only: [:create,:destroy,:new,:show]
  resources :products
  resources :in_shopping_carts, only: [:create, :destroy]
  devise_for :users


post "/emails/create", as: :create_email
post "/pagar", to: "payments#create"
post "/payments/cards", to: "payments#process_card"
get "/checkout", to: "payments#checkout"
get "/ok", to: "welcome#payment_success"


get "carrito", to: "shopping_carts#show"
get "/add/:product_id", as: :add_to_cart,to: "in_shopping_carts#create"
  authenticated :user do
		root 'welcome#index'
	end
	unauthenticated :user do
		devise_scope :user do
			root 'welcome#unregistered', as: :unregistered_root
		end
	end
end
