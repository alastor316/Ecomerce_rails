Rails.application.routes.draw do
  devise_for :users
  resources :attachments, only: [:new,:create,:destroy,:show]
      resources :products
post "/emails/create", as: :create_email

  authenticated :user do
		root 'welcome#index'
	end
	unauthenticated :user do
		devise_scope :user do
			root 'welcome#unregistered', as: :unregistered_root
		end
	end
end
