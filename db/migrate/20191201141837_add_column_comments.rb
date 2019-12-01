class AddColumnComments < ActiveRecord::Migration[6.0]
  def up
    add_column :comments, :name, :string
    add_column :comments, :reply_to, :integer
  end

  def down
    remove_column :comments, :name, :string
    remove_column :comments, :reply_to, :integer
  end
end
