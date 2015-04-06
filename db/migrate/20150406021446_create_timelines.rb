class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.belongs_to :desk, index: true
      t.string :title

      t.timestamps null: false
    end
    add_foreign_key :timelines, :desks
  end
end
