class Service < ApplicationRecord
  has_many :bookings
  has_many :reviews, through: :bookings
  belongs_to :user

  validates :name, :category, :price, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :name, :category, :description],
  associated_against: {
    user: [ :first_name, :last_name, :username ]
  },
  using: {
    tsearch: { prefix: true }
  }
end
