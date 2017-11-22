class CreateTeamMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :team_members, id: :uuid do |t|
      t.references :team, type: :uuid, index: true
      t.references :user, type: :uuid, index: true
      t.column :status, :integer, limit: 2, default: 0
      t.boolean :manager, default: false
      t.column :role, :integer, limit: 2, default: 0
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
