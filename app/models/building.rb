class Building < ApplicationRecord
  belongs_to :owner
  has_many :places
  has_many :place_images

  mount_uploader :image, ImageUploader
  validates :name,    presence: true
  validates :street,  presence: true
  validates :zipcode, presence: true
  validates :city,    presence: true
  validates :country, presence: true
end
