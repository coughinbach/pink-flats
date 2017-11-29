class Flat < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  validates :address, presence: true
  validates :rooms, presence: true
  validates :description, presence: true
  validates :price, presence: true
<<<<<<< HEAD
  mount_uploader :photo, PhotoUploader
=======
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
>>>>>>> 788f629b5001298b83267d1602f9664fc017c030
end
