class SectionsController < ApplicationController
  #def sports
  #  @articles = Article.find(:all, :conditions=>{ :section =>"sports"})
  #end
  def show
    @articles = Article.find(:all, :conditions=>{ :section=>params[:name].capitalize})
  end
end
