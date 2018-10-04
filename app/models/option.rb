class Option < ApplicationRecord
  has_many :place_options
  has_many :places, through: :place_options

  validates :name, presence: true
end
