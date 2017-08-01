Rails.application.routes.draw do



  resources :attachments, only: [:create,:destroy,:new,:show]
  resources :products
  resources :in_shopping_carts, only: [:create, :destroy]
  devise_for :users

post "/products/new" , as: :create_product

post "/emails/create", as: :create_email
post "/pagar", to: "payments#create"
post "/payments/cards", to: "payments#process_card"
get "/checkout", to: "payments#checkout"
get "/ok", to: "welcome#payment_success"

get "/ordenes", to: "ordenes#index"

get "/descargar/:id", to:"links#download"
get "/descargar/:id/archivo/:attachment_id", to:"links#download_attachment",as: :download_attachment
get "/invalid", to:"welcome#unregistered"

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
