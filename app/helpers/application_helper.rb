module ApplicationHelper
  def render_if(condition, template)
    render template if condition
  end
end
