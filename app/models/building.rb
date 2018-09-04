class Building < ApplicationRecord
  belongs_to :owner

  validates :name,    presence: true
  validates :lat,     presence: true
  validates :long,    presence: true
  validates :street,  presence: true
  validates :zipcode, presence: true
  validates :city,    presence: true
  validates :country, presence: true
end
