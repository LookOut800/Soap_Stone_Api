class CreateArtObjects < ActiveRecord::Migration
  def change
    create_table :art_objects do |t|
      t.string :period
      t.string :color
      t.string :feature_image
      t.string :thumbnail
      t.string :medium
      t.string :title
      t.text :description
      t.belongs_to :timeline, index: true

      t.timestamps null: false
    end
    add_foreign_key :art_objects, :timelines
  end
end
