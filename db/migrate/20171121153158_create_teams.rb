class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams, id: :uuid do |t|
      t.references :organization, type: :uuid, null: true
      t.string :name
      t.string :color
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
