class AddCommentToNote < ActiveRecord::Migration[5.2]
  def change
    change_table :notes do |t|
      t.string :comment
    end
  end
end
