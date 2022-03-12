module ApplicationHelper
  def time_format(datetime)
    datetime.strftime('%c') unless datetime.blank?
  end

  def button_text
    case controller.action_name
    when 'new'
      'Add'
    when 'edit'
      'Update'
    else
      'Submit'
    end
  end

  def img_grow_value(class_type)
    return 100 if class_type == 'card-img-top'

    0
  end

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
