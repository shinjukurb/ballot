class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :description
      t.references :topic, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
