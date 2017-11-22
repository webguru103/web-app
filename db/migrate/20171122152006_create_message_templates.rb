class CreateMessageTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :message_templates, id: :uuid do |t|
      t.column :type, :integer, limit: 2
      t.string :subject
      t.string :body
      t.string :sender
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
