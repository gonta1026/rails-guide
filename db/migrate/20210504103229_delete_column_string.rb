class DeleteColumnString < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :string
  end
end
