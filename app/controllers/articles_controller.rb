class ArticlesController < ApplicationController

  def welcome
  end

  def index
    @articles=Article.all
  end

  def show
    @article=Article.find(params[:id])
  end

  def new
  end  

  def create
  @article=Article.new (article_params)

    if @article.save
       redirect_to @article
    else
      @error=@article.errors.full_messages
      render action: 'new'
    end
  end

   private

  def article_params
    params.require(:article).permit(:title,:text)
  end
  
end
