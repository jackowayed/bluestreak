module ImagesHelper
  def article_title
    Article.find_by_id(@image.article_id).title if @image.article_id
  end
end
