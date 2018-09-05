class AddIndexBookerToNote < ActiveRecord::Migration[5.2]
  def change
    add_reference(:notes, :booker)
  end
end
