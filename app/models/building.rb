class Building < ApplicationRecord
  belongs_to :owner
  has_many :places

  validates :name,    presence: true
  validates :street,  presence: true
  validates :zipcode, presence: true
  validates :city,    presence: true
  validates :country, presence: true
end
