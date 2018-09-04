class Place < ApplicationRecord
  belongs_to :building

  validates :name,        presence: true
  validates :capacity,    presence: true
  validates :unit_price,  presence: true
  validates :total_price, presence: true
  validates :description, presence: true
end
