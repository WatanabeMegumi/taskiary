class CreateSubTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :sub_tasks do |t|
      t.string :name, null: false
      t.integer :target_time, null: false
      t.integer :actual_time
      t.integer :order, null: false
      t.references :main_task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
