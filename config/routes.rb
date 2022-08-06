Rails.application.routes.draw do
  # get 'home/index'
  
  get 'recipes_foods/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  root 'users#index'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_scope :user do
    get '/users/:user_id/recipes/:recipe_id/recipes_foods/new' => 'recipes_foods#new'
    get '/users/:user_id/recipes/:recipe_id/recipes_foods/:id' => 'recipes_foods#destroy'
  
  end
  resources :users do
    resources :foods, except: %i[:edit]
    resources :recipes, except: %i[:edit]  do
      resources :shoppings, only:[:index]
      resources :recipes_foods, only: %i[new create destroy]

    end
  resources :publics, only:[:index]
  end

end
