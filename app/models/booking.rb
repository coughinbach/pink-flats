class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  validates :user, presence: true
  validates :flat, presence: true
  validates :nights, presence: true, numericality: { :greater_than 0 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :guests, presence: true, numericality: { :greater_than 0 }
end
