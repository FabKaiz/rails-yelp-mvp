Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews
  end
  
  # get 'reviews/create'
  # get 'reviews/new'
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/create'
  # get 'restaurants/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
