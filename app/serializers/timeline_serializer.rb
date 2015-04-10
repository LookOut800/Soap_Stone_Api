class TimelineSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :art_objects
  attributes :id, :title, :description, :user_id, :created_at, :updated_at
end
