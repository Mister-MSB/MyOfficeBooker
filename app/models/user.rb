class User < ApplicationRecord
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
  validates :birthdate, presence: true
  validates :mobile,    presence: true
  validates :phone,     presence: true
  validates :sex,       presence: true

  def timeout_in
    15.minutes
  end
end
