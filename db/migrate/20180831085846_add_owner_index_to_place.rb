class AddOwnerIndexToPlace < ActiveRecord::Migration[5.2]
  def change
    add_reference(:places, :owner)
  end
end
