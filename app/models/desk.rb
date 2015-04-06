class Desk < ActiveRecord::Base
  belongs_to :user
  has_many :timelines
end
