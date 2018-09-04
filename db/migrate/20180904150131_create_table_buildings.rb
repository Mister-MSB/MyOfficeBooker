class CreateTableBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :name
      t.float :long
      t.float :lat
      t.string :street
      t.string :complement
      t.string :zipcode
      t.string :city
      t.string :country
      t.timestamps
    end
  end
end
