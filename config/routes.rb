Rails.application.routes.draw do
  # resources :recipes do
  #   match '/scrape', to: 'recipes#scrape', via: :post, on: :collection
  # end
  devise_for :users
  root to: "pages#home"
  
  resources :recipes do
    resources :bookmarks, only: [:new, :create]
    resources  :favorites, only: [:show, :new, :create]
  end
  get 'recipes/new1', to: 'recipes#new1'
end
