class SubTask < ApplicationRecord
  belongs_to :main_task

  validates :name, presence: true
  validates :target_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :actual_time, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
  validates :order, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
