class AddOwnerIndexToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_reference(:addresses, :owner)
  end
end
