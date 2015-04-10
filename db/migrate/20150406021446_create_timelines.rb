class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.string :title
      t.text :description
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :timelines, :users
  end
end
