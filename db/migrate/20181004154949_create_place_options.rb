class CreatePlaceOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :place_options do |t|
      t.integer "place_id"
      t.integer "option_id"
      t.integer :price
      t.timestamps
    end
  end
end
