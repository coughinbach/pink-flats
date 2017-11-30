class Review < ApplicationRecord
  belongs_to :flat
  belongs_to :user
  validates :username, presence: true
  validates :flat, presence: true
  validates :content, presence: true
  validates :rating, presence: true
end
