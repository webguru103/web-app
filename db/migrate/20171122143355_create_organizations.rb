class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations, id: :uuid do |t|
      t.string :name
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
