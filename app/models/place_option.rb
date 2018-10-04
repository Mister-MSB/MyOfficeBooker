class PlaceOption < ApplicationRecord
  belongs_to :place
  belongs_to :option

  validates :price, presence: true
end
