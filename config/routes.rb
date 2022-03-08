Rails.application.routes.draw do

  resources :foods 
  resources :inventories do 
    resources :inventory_foods
  end
  resources :recipes do 
    resources :recipe_foods
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # root 'public_recipes#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
