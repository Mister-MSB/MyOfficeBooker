class AddIndexToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference(:bookings, :booker)
    add_reference(:bookings, :place)
  end
end
