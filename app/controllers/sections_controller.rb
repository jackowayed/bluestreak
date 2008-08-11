class SectionsController < ApplicationController
  #def sports
  #  @articles = Article.find(:all, :conditions=>{ :section =>"sports"})
  #end
  def show
# @articles = Article.find(:all, :conditions=>{ :section=>params[:name].capitalize, Issue.find(:first, :conditions=>{:issue_id=>:id}).current?=>true})
    #current_issue = Issue.find(:last, :conditions=>{ :current =>true})
    #current_issue = Issue.find_by_current(true)

    @articles = current_issue.articles.find_all_by_section(params[:name].capitalize)
  end
end
