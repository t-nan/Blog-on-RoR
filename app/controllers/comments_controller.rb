class CommentsController < ApplicationController
  before_action :authenticate_user!, :only => [:create]

  def create

    @article=Article.find(params[:article_id])

    comment=@article.comments.new (comment_params)

    comment.save

    @error=comment.errors.full_messages

    redirect_to article_path(@article)  
  
  end
  def comment_params

    params.require(:comment).permit(:author,:body)

  end
end
