class AddIndexToPlaceImages < ActiveRecord::Migration[5.2]
  def change
    add_reference(:place_images, :place)
  end
end
