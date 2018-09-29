class AddIndexToBuildingImages < ActiveRecord::Migration[5.2]
  def change
    add_reference(:building_images, :building)
  end
end
