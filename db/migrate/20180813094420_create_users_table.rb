class CreateUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :bookers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.date :birthdate
      t.string :mobile
      t.string :phone
      t.string :sex
      t.timestamps
    end
  end
end
