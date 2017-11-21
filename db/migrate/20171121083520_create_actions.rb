class CreateActions < ActiveRecord::Migration[5.1]
  def change
    create_table :actions, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.references :user, type: :uuid, index: true
      t.references :team, type: :uuid, null: true, index: true
      t.string :description
      t.integer :sort_order
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :planned_on
      t.datetime :completed_on
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
