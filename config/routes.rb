RailsDemo::Application.routes.draw do
  concern :commentable do
    resources :comments
  end

  concern :previewable do
    get "preview", on: :member
  end

  resources :images, concerns: [ :commentable, :previewable ]
  resources :posts , concerns: :commentable
  resources :categories, only: [ :index, :edit, :update ]
  resources :contacts, only: [ :new, :create ]
  resources :stream, only: [ :index ]

  get "home/index"
  get "home/about"

  root to: 'home#index'

end
