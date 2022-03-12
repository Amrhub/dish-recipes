Rails.application.routes.draw do
  get 'shopping_list/index'
  devise_for :users

  resources :foods , :except => [:show]
  resources :inventories do 
    resources :inventory_foods
  end
  resources :recipes do 
    resources :recipe_foods
    get '/general_shopping_list', to: 'shopping_list#index', as:  'shopping_list'
  end

  root "recipes#index"
end
