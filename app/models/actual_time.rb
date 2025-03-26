class ActualTime < ApplicationRecord
  belongs_to :post

  validates :actual_time, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
