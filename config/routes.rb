Rails.application.routes.draw do
  resources :recipes do
    match '/scrape', to: 'recipes#scrape', via: :post, on: :collection
  end
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :recipes do
    resources :bookmarks, only: [:new, :create]
    resources  :favorites, only: [:show, :new, :create]
  end
  get 'recipes/new1', to: 'recipes#new1'
end
