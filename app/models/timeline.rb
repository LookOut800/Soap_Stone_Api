class Timeline < ActiveRecord::Base
  belongs_to :user
  has_many :posts, dependent: :destroy
  has_many :art_objects, dependent: :destroy
end
