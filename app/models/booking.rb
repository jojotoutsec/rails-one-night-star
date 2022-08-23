class Booking < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :end_date, greater_than: :start_date
  validates :start_date, greater_than_or_equal_to: Date.today
  belongs_to :user
  belongs_to :service
  has_many :reviews
end
