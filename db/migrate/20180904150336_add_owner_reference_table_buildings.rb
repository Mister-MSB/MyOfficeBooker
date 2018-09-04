class AddOwnerReferenceTableBuildings < ActiveRecord::Migration[5.2]
  def change
    add_reference(:buildings, :owner)
  end
end
