class Place < ApplicationRecord
  belongs_to :building
  has_many :notes
  has_many :building_images
  has_many :bookings

  mount_uploader :image, ImageUploader
  validates :name,        presence: true
  validates :capacity,    presence: true
  validates :unit_price,  presence: true
  validates :total_price, presence: true
  validates :description, presence: true
end
