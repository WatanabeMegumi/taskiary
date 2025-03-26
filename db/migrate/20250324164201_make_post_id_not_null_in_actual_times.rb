class MakePostIdNotNullInActualTimes < ActiveRecord::Migration[7.1]
  def change
    change_column_null :actual_times, :post_id, false
  end
end
