class AddDefaultTimezoneValueToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users, :timezone, 'UTC'
  end
end
