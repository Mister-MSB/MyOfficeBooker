class Place < ApplicationRecord
  validates :name,        presence: true
  validates :long,        presence: true
  validates :lat,         presence: true
  validates :capacity,    presence: true
  validates :total_price, presence: true
  validates :unit_price,  presence: true
  validates :street,      presence: true
  validates :zipcode,     presence: true
  validates :city,        presence: true
  validates :country,     presence: true
  validates :description, presence: true
  validates :note,        presence: true
  validates :note_count,  presence: true
end
