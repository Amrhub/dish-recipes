module ShoppingListHelper
  def count_food(recipe)
    recipe.recipe_foods.count
  end 

  def total_food_price(recipe)
    recipe_foods = recipe.recipe_foods
    total_price = 0

    recipe_foods.each do |recipe_food|
      total_price += recipe_food.food.price.to_i * recipe_food.quantity.to_i
    end
    total_price
  end
end
