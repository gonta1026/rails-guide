class AddColumnIsDeletedTocomments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :is_deleted, :boolean, default: false, null: false
  end
end
