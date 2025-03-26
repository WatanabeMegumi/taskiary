class Post < ApplicationRecord
  has_one :actual_time, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :task_name, presence: true
  validates :target_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
