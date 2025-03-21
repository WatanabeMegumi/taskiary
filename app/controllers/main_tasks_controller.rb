class MainTasksController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def new
    @main_task = MainTask.new
    @main_task.sub_tasks.build # 最低1つのサブタスクを準備
  end
end
