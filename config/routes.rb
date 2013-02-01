RailsDemo::Application.routes.draw do
  resources :categories, only: [ :index, :edit, :update ]
  resources :images do
    resources :comments
  end
  resources :stream, only: [:index]

  get "home/index"
  get "home/about"

  resources :posts do
    resources :comments
  end
  resources :contacts, only: [ :new, :create ]
  resources :stream, only: [ :index ]

  root to: 'home#index'

end
