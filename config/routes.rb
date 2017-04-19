Rails.application.routes.draw do
  get 'review/new'

  get 'review/create'

  get 'restaurant/index'

  get 'restaurant/new'

  get 'restaurant/create'

  get 'restaurant/show'

  resources :restaurants, only: [ :index, :new, :create, :show ] do
    resources :reviews, only: [ :new, :create ]
  end
end
