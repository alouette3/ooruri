Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items
  # get 'items/search'
    # collection do
    #   get 'search'
    # end
end
