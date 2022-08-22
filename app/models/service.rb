class Service < ApplicationRecord
    has_many :bookings
    has_many :reviews, through: :bookings
    belongs_to :user

    validates :name, :category, :price, presence: true
end
