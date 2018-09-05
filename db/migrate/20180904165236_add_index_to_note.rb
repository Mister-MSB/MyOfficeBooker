class AddIndexToNote < ActiveRecord::Migration[5.2]
  def change
    add_reference(:notes, :place)
  end
end
