class CreateDesks < ActiveRecord::Migration
  def change
    create_table :desks do |t|
      t.string :name
      t.string :timestamps
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :desks, :users
  end
end
