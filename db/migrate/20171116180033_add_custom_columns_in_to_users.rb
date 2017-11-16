class AddCustomColumnsInToUsers < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :display_name, :string
    add_column :users, :timezone, :string
  end

  def down
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :display_name, :string
    remove_column :users, :timezone, :string
  end
end
