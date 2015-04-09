class AddUserIdToTimelines < ActiveRecord::Migration
  def change
    add_reference :timelines, :user, index: true
    add_foreign_key :timelines, :users
  end
end
