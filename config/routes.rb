Rails.application.routes.draw do
  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/new'
  # get 'lists/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "lists#index"

  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[create destroy]
  end
end
