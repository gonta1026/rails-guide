class NullFalseAdd < ActiveRecord::Migration[6.1]
  def change
    change_column_null :articles, :body, false, 0
    change_column_default :articles, :body, from: nil, to: 0
  end
end
