class AddColumnIsDeleted < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :is_deleted, :boolean, default: false, null: false
  end
end
