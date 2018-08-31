class AddOwnerIndexToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_index(:addresses, :owner)
  end
end
