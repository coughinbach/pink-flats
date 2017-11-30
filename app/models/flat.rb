class Flat < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  validates :address, presence: true
  validates :guests, presence: true
  validates :description, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  include PgSearch
  pg_search_scope :search_by_location,
    against: [ :address ],
    using: {
      tsearch: { prefix: true }
    }
end
