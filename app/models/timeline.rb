class Timeline < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  has_many :art_objects
end
