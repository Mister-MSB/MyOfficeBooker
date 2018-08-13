class Address < ApplicationRecord
  belongs_to :client

  validates :street,   presence: true
  validates :zipcode,  presence: true
  validates :city,     presence: true
  validates :country,  presence: true

end
