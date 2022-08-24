class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews
  has_many :bookings
  has_many :services

  # Les bookings sur mes services
  has_many :requested_services, through: :services, source: :bookings

  # Les services que j'ai booké
  has_many :rented_services, through: :bookings, source: :service

  validates :username, :first_name, :last_name, presence: true
end
