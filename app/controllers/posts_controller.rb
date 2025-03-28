class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.includes(:user).order(created_at: :desc)
  end

  # ステップ1: 新規タスク作成画面
  def new_task
    @task = OpenStruct.new(session[:task] || { task_name: '', target_time: '' })
  end

  def save_task
    task_name = params[:task_name]
    target_time = params[:target_time]

    if task_name.blank? || target_time.blank? || target_time.to_i <= 0
      flash.now[:alert] = "タスク名と目標時間は必須です。"
      @task = OpenStruct.new(task_name: task_name, target_time: target_time)
      render :new_task, status: :unprocessable_entity and return
    end

    session[:task] = {
      task_name: task_name,
      target_time: target_time.to_i
    }

    redirect_to stopwatch_posts_path
  end

  # ステップ2: 計測画面
  def stopwatch
    @task = session[:task]
    redirect_to new_task_posts_path if @task.blank?
  end

  def save_time
    session[:actual_time] = params[:actual_time].to_i
    redirect_to new_post_path
  end

  # ステップ3: ポスト作成画面
  def new
    @post = Post.new
    @task = session[:task]
    @actual_time = session[:actual_time]
    redirect_to new_task_posts_path if @task.blank? || @actual_time.blank?
  end

  def create
    @task = session[:task]
    @actual_time = session[:actual_time]

    @post = Post.new(post_params)
    @post.user = current_user
    @post.task_name = @task["task_name"]
    @post.target_time = @task["target_time"]

    if @post.save
      @post.create_actual_time(actual_time: @actual_time)
      session.delete(:task)
      session.delete(:actual_time)
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @comment = Comment.new
    @comments = @post.comments.includes(:user).order(created_at: :asc)
  end

  def edit
    return if current_user == @post.user && @post.present?
    redirect_to root_path
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post), notice: "更新が完了しました"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if current_user == @post.user
      @post.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
