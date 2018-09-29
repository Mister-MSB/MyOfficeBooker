class CreatePlaceImages < ActiveRecord::Migration[5.2]
  def change
    create_table :place_images do |t|
      t.string :image
    end
  end
end
