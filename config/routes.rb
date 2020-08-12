Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/destroy'
  get 'restaurant/new'
  get 'restaurant/create'
  get 'restaurant/destroy'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'
  get 'restaurants/create'
  get 'restaurants/edit'
  get 'restaurants/update'
  get 'restaurants/destroy'
  get 'restaurant/index'
  get 'restaurant/show'
  get 'restaurant/new'
  get 'restaurant/create'
  get 'restaurant/edit'
  get 'restaurant/update'
  get 'restaurant/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants
end
