Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "user_registrations" }
  resources :users
  resources :products

  post 'payments/create'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/featured'

  get 'static_controller/about'

  get 'static_controller/contact'

  get 'static_controller/featured'

  post 'static_pages/thank_you'

  root 'static_pages#index'

  resources :orders, only: [:index, :show, :create, :destroy]

  resources :products do
    resources :comments
  end

  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
