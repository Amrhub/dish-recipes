module RecipesHelper
  def recipe_owner(recipe)
    if recipe.user == current_user
      "You"
    else
      recipe.user.name
    end
  end

  def get_food_name(recipe_food)
    recipe_food.food.name
  end

  def get_food_quantity(recipe_food)
    "#{recipe_food.quantity}#{recipe_food.food.measurement_unit}"
  end

  def get_food_value(quantity, recipe_food)
    "$#{recipe_food.food.price * quantity.to_i}"
  end
end
