class AddClientIndexToAdresses < ActiveRecord::Migration[5.2]
  def change
    add_index(:addresses, :booker)
  end
end
