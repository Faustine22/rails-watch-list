Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    resources :lists, only: %i[create new show index] do
      resources :bookmarks, only: %i[new, create]
    end
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    resources :bookmarks, only: %i[destroy]
    # Defines the root path route ("/")
    # root "articles#index"
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
