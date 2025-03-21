class CreateMainTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :main_tasks do |t|
      t.string :name, null: false
      t.integer :target_time, null: false
      t.integer :actual_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
