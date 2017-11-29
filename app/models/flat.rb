class Flat < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  validates :address, presence: true
  validates :rooms, presence: true
  validates :description, presence: true
  validates :price, presence: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
