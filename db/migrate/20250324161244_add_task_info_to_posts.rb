class AddTaskInfoToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :task_name, :string
    add_column :posts, :target_time, :integer
  end
end
