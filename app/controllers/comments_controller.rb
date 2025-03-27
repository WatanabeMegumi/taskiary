class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])
    @comments = @post.comments.includes(:user).order(created_at: :asc)

    if @comment.save
      redirect_to post_path(@comment.post.id)
    else
      flash.now[:alert] = "コメントの投稿に失敗しました"
      render "posts/show", status: :unprocessable_entity
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    if comment.user == current_user
      comment.destroy
      redirect_to post_path(params[:post_id])
    else
      redirect_to post_path(params[:post_id])
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
