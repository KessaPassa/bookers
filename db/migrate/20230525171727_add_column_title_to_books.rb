class AddColumnTitleToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :title, :string, null: false
  end
end
