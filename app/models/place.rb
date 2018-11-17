class Place < ApplicationRecord
  belongs_to :building
  has_many :notes
  has_many :place_images
  has_many :bookings

  has_many :place_options
  has_many :options, through: :place_options

  mount_uploader :image, ImageUploader
  validates :name,        presence: true
  validates :capacity,    presence: true
  validates :unit_price,  presence: true
  validates :total_price, presence: true
  validates :description, presence: true
end
