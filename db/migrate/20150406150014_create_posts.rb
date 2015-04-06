class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :url
      t.belongs_to :timeline, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :timelines
  end
end
