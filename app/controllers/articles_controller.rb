class ArticlesController < ApplicationController
  # GET /articles
  # GET /articles.xml
  #SchoolYear = 2008
  #Issue = 1
  
  before_filter :authenticate, :except => [:show, :home, :section]
  
  def index
    @articles = Article.find(:all)
    current_issue
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.xml
  def show
    @article = Article.find(params[:id])
    session[:article_id] = @article.id

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @article }
      format.json { render :json => @article }
    end
  end

  # GET /articles/new
  # GET /articles/new.xml
  def new
    @article = Article.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles
  # POST /articles.xml
  def create
    @article = Article.new(params[:article])

    respond_to do |format|
      if @article.save
        flash[:notice] = 'Article was successfully created.'
        format.html { redirect_to(@article) }
        format.xml  { render :xml => @article, :status => :created, :location => @article }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /articles/1
  # PUT /articles/1.xml
  def update
    @article = Article.find(params[:id])

    respond_to do |format|
      if @article.update_attributes(params[:article])
        flash[:notice] = 'Article was successfully updated.'
        format.html { redirect_to(@article) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.xml
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html { redirect_to(articles_url) }
      format.xml  { head :ok }
    end
  end
  def home
    @articles = current_issue.articles
    #@articles = Article.find_all_by_issue_id(current_issue.id)
#    @articles = Article.find_all_by_issue_id(Issue.find_by_current(true).id)
    split_articles @articles
  end
  def section
    @articles = current_issue.articles.find_all_by_section(params[:name].capitalize)
    split_articles @articles
  end
  def split_articles(articles)
    @top_articles = []
    @list_articles = []
    articles.each{ |x| ((x.front_rank==-1)?(@list_articles):(@top_articles)) << x } 
  end
end


