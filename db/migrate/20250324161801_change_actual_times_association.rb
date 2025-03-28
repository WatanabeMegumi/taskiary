class ChangeActualTimesAssociation < ActiveRecord::Migration[7.1]
  def change
    add_reference :actual_times, :post, foreign_key: true
  end
end
