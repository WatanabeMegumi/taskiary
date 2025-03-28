# class DropTasks < ActiveRecord::Migration[7.1]
#   def change
#     drop_table :tasks do |t|
#       t.string :name, null: false
#       t.integer :target_time, null: false
#       t.integer :order, null: false
#       t.references :post, null: false, foreign_key: true
#       t.timestamps
#     end
#   end
# end
