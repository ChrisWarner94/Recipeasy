Rails.application.routes.draw do
  # resources :recipes do
  #   match '/scrape', to: 'recipes#scrape', via: :post, on: :collection
  # end
  devise_for :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get 'recipes/new1', to: 'recipes#new1'
  get 'recipes/new2', to: 'recipes#new2'
  get 'recipes/imported_recipes', to: 'recipes#imported_recipes'
  get 'dashboard', to: 'pages#dashboard'

  get 'calendar', to: 'bookmarks#calendar'
  get 'dashboard', to: 'pages#dashboard'
  get 'about_us', to: 'pages#about_us'
  resources :recipes do
    resources :bookmarks, only: [:create, :show]
    resources :favorites, only: [:show, :new, :create]

  end
end
