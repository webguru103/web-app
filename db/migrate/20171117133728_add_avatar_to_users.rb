class AddAvatarToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avatar, :string, null: true
  end
end
