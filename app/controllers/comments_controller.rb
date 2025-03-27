class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to post_path(@comment.post.id)
    else
      flash.now[:alert] = "コメントの投稿に失敗しました"
      render "posts/show", status: :unprocessable_entity
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
