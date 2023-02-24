Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
      resources :bookmarks, only: %i[new, create]
    end
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    resources :bookmarks, only: %i[destroy]
    # Defines the root path route ("/")
    # root "articles#index"

  # Defines the root path route ("/")
  # root "articles#index"
end

