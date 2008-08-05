class SectionsController < ApplicationController
  def sports
    @articles = Article.find(:all, :conditions=>{ :section =>"sports"})
  end
end
