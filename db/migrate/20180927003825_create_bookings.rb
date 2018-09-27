class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :date
      t.integer :capacity
      t.string :booking_type
      t.string :status
      t.timestamps
    end
  end
end
