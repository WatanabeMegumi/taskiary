class MainTasksController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def new
    @main_task = MainTask.new
    @main_task.sub_tasks.build
  end

  def show
    @main_task = current_user.main_tasks.find(params[:id])
    @sub_tasks = @main_task.sub_tasks.order(:order)
  end

  def create
    def create
      # セッションからデータを取得する
      @main_task = current_user.main_tasks.build(main_task_params)
      if session[:main_task]
        # セッションからメインタスクとサブタスクを取り出して保存
        @main_task = MainTask.new(session[:main_task])
        if @main_task.save
          session.delete(:main_task) # セッションのデータを削除
          redirect_to main_task_path(@main_task), notice: 'タスクを作成しました。'
        else
          render :new, status: :unprocessable_entity
        end
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  private

  def main_task_params
    params.require(:main_task).permit(:name, :target_time, :actual_time, sub_tasks_attributes: [:name, :target_time, :order])
  end
end
