module ApplicationHelper
  def boldify(text)
    "<strong>#{text}</strong>".html_safe
  end
end
