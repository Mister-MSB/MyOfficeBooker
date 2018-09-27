class BuildingImage < ApplicationRecord
  belongs_to :building

  mount_uploader :image, ImageUploader
end
