class Booker < ApplicationRecord
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :timeoutable

  has_many :addresses
  has_many :notes
  has_many :bookings

  validates :firstname, presence: true
  validates :lastname,  presence: true
  validates :email,     presence: true
end
