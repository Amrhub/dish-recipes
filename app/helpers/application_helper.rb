module ApplicationHelper
  def time_format(datetime)
    datetime.strftime('%H:%M') unless datetime.blank?
  end
end
