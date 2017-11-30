class Flat < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  has_many :reviews, dependent: :destroy
  validates :address, presence: true
  validates :rooms, presence: true
  validates :description, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
