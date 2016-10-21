Rails.application.routes.draw do
  resources :products
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/featured'

  get 'static_controller/about'

  get 'static_controller/contact'

  get 'static_controller/featured'

  post 'static_pages/thank_you'

  root 'static_pages#index'

  resources :orders, only: [:index, :show, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
