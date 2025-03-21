class MainTask < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { maximum: 255 }
  validates :target_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :actual_time, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
end
