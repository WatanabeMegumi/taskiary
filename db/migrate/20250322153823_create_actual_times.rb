class CreateActualTimes < ActiveRecord::Migration[7.1]
  def change
    create_table :actual_times do |t|
      t.integer :actual_time,           null: false

      t.timestamps
    end
  end
end
