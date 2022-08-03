Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'users#index'
  resources :users do
    resources :foods, except: %i[:edit]
    resources :recipes, except: %i[:edit]  do
      resources :recipes_foods, only: %i[index show]
    end
  resources :shoppings, only:[:index]
  resources :publics, only:[:index]
  end
end
