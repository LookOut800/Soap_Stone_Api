class TimelineSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :user_id, :created_at, :updated_at
end
