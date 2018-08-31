class Place < ApplicationRecord
  belongs_to :owner

  validates :name,        presence: true
  validates :capacity,    presence: true
  validates :total_price, presence: true
  validates :unit_price,  presence: true
  validates :street,      presence: true
  validates :zipcode,     presence: true
  validates :city,        presence: true
  validates :country,     presence: true
  validates :description, presence: true
end
