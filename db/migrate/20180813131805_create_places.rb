class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.float :long
      t.float :lat
      t.integer :capacity
      t.integer :total_price
      t.integer :unit_price
      t.string :street
      t.string :zipcode
      t.string :city
      t.string :country
      t.string :description
      t.float :note
      t.integer :note_count
      t.timestamps
    end
  end
end
