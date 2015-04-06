class Timeline < ActiveRecord::Base
  belongs_to :desk
  has_many :posts
end
