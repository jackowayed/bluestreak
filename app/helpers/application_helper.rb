# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def make_line_breaks(str)
    str.gsub("\n","<br/>")
  end
end
