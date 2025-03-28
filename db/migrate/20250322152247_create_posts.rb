class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title,                   null: false
      t.text :text
      t.string :task_name,        null: false
      t.integer :target_time,     null: false
      t.references :user,               null: false, foreign_key: true

      t.timestamps
    end
  end
end
