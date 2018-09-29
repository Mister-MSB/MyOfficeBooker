class CreateBuildingImages < ActiveRecord::Migration[5.2]
  def change
    create_table :building_images do |t|
      t.string :image
    end
  end
end
