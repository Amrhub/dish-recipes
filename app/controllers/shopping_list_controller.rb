class ShoppingListController < ApplicationController
  def index
    @recipe = Recipe.find(params[:recipe_id])
  end
end
