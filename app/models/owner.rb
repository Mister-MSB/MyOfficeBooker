class Owner < ApplicationRecord
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :timeoutable

  has_many :addresses

  validates :firstname, presence: true
  validates :lastname,  presence: true
  validates :email,     presence: true
end
