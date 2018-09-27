class Booking < ApplicationRecord
  extend Enumerize

  after_initialize :set_status

  belongs_to :booker
  belongs_to :place

  enumerize :booking_type, in: %i(complète partielle)
  enumerize :status, in: %i(created validated paid done cancelled)

  validates :date,         presence: true
  validates :capacity,     presence: true
  validates :booking_type, presence: true

  private

  def set_status
    self.status = :created
  end


end
