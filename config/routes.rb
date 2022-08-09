Rails.application.routes.draw do
  get "/books/:id" => "books#show"
  delete "/books/:id" => "books#destroy"
  resources :publishers
  resource :profile, only: %i{show edit update}

  # resources :publishers do
  #   resources :books #publishers/:publisher_id/books/:book_id
  #   member do
  #     get 'detail' #publishers/:publisher_id/detail
  #   end
  #   collection do
  #     get 'search' #publishers/search
  #   end
  # end
end
