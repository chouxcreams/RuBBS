class AddColumnBoards < ActiveRecord::Migration[6.0]
  def up
    add_column :boards, :comments_count, :integer, default: 0
  end

  def down
    remove_column :boards, :comments_count, :integer, default: 0
  end
end
