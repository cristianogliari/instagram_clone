class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.new(comment_params)
  
    if @comment.save
      redirect_to @comment.post, notice: "Comentário enviado com sucesso!"
    else
      flash.now[:alert] = @comment.errors.full_messages.to_sentense
      render "posts/show"
    end
  
  end

  private

  def comment_params
    params.require(:comment).permit(:post_id, :body)
  end

end
