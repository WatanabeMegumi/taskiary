class CreateActualTimes < ActiveRecord::Migration[7.1]
  def change
    create_table :actual_times do |t|
      t.integer :actual_time,           null: false
      t.references :post,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
