module RecipesHelper
  def recipe_owner(recipe)
    if recipe.user == current_user
      "You"
    else
      recipe.user.name
    end
  end
end
