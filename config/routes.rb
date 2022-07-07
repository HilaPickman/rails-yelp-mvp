# Rails.application.routes.draw do
#   resources :restaurants do
#     resources :reviews, only: [ :new, :create ]
#   end
#   resources :reviews, only: [ :destroy ]
# end

Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id', to: 'restaurants#show', as: "restaurant"
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: "edit_restaurant"
  # patch 'restaurants/:id', to: 'restaurants#update'
  # delete 'restaurants/:id', to: 'restaurants#destroy'
end
