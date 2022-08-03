Rails.application.routes.draw do
  get 'publics/index'
  # get 'shoppings/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'users#index'
  resources :users, only: %i[index show] do
    resources :foods, only: %i[new create destroy]
    resources :recipes, only: %i[index show new create destroy]  do
      resources :recipes_foods, only: %i[index show]
    end
  resources :shoppings, only:[:index]
  resources :publics, only:[:index]

  end


end
