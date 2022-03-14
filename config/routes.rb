Rails.application.routes.draw do
  devise_for :users

  resources :foods , :except => [:show]
  resources :recipes do 
    resources :recipe_foods
    get '/general_shopping_list', to: 'shopping_list#index', as:  'shopping_list'
  end

  root "public_recipes#index"

  # future work
    # resources :inventories do 
    #   resources :inventory_foods
    # end
end
