class RemoveDeskIdFromTimelines < ActiveRecord::Migration
  def change
    remove_foreign_key :timelines, :desks
  end
end
