Rails.application.routes.draw do
  devise_for :users

  resources :foods 
  resources :inventories do 
    resources :inventory_foods
  end
  resources :recipes do 
    resources :recipe_foods
  end

  root "recipes#index"
end
