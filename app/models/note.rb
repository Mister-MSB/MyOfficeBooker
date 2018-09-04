class Note < ApplicationRecord
  belongs_to :place
  belongs_to :booker

  validates :note, presence: true
end
