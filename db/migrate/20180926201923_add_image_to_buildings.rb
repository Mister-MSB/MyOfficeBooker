class AddImageToBuildings < ActiveRecord::Migration[5.2]
  def change
    add_column :buildings, :image, :string
  end
end
