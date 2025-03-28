class AddPostIdToActualTimes < ActiveRecord::Migration[7.1]
  def change
    add_column :actual_times, :post_id, :integer, null: false
  end
end
