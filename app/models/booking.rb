class Booking < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :end_date, greater_than: :start_date

  belongs_to :user
  belongs_to :service
end
