class ChangeActualTimesAssociation < ActiveRecord::Migration[7.1]
  def change
    remove_reference :actual_times, :task, foreign_key: true
    add_reference :actual_times, :post, foreign_key: true
  end
end
