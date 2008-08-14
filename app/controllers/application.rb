# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  helper_method :make_line_breaks, :current_issue, :sections, :preview, :section_path


  def make_line_breaks(str)
    str.gsub("\n","<br/>")
  end
  def current_issue
    @current_issue ||=Issue.find_by_current(true)
  end
  def sections
    @sections ||= %w(Editorial Entertainment Features News School\ News Sports)
  end
  def preview(article, lines)
    arr = article.body.split("/n")
    prev = ""
    (0..lines).each{ |line| prev << arr[line] if arr[line]}
    prev
  end
  def section_path section
    "/articles/section/" + section.gsub(" ", "_")
  end


  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '5134887f4b55533cd0807845a4031502'

  # See ActionController::Base for details
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password").
  # filter_parameter_logging :password
end
