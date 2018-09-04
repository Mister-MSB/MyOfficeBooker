class CreateTablePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.integer :capacity
      t.integer :total_price
      t.integer :unit_price
      t.string :description
      t.timestamps
    end
  end
end
