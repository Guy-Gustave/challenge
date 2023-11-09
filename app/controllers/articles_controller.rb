class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    
    if @article.save
      flash[:notice] = 'Article created successfully'
      redirect_to @article
    else
      flash[:error] = @article.errors.full_messages
      render new
    end
  end

  def show
  end

  def update
    if @article.update(article_params)
      flash[:notice] = 'Article updated'
      redirect_to @articles
    else
      flash[:error] = @article.errors.full_messages
      redirect_to edit_articles_path
    end
  end

  def destroy
  end

  private

  def article_params
    params.require(:article).permit(:title, :description, :image)
  end

  def set_article
    @article = Article.find(params[:article])
  end
end
