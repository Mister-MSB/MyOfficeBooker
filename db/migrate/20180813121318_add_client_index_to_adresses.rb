class AddClientIndexToAdresses < ActiveRecord::Migration[5.2]
  def change
    add_reference(:addresses, :booker, null: true)
  end
end
