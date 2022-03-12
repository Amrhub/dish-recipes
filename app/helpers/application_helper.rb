module ApplicationHelper
  def time_format(datetime)
    datetime.strftime('%H:%M') unless datetime.blank?
  end

  def button_text
    if controller.action_name == "new"
      return "Add"
    elsif controller.action_name == "edit"
      return "Update"
    else
      return "Submit"
    end
  end

  def img_grow_value(class_type)
    return 0 if class_type == "img-fluid"
    100
  end
end
