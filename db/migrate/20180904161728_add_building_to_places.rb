class AddBuildingToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_reference(:places, :building)
  end
end
