class Address < ApplicationRecord
  belongs_to :booker, optional: true
  belongs_to :owner,  optional: true

  validates :street,   presence: true
  validates :zipcode,  presence: true
  validates :city,     presence: true
  validates :country,  presence: true
  validates :usage,    presence: true
end
