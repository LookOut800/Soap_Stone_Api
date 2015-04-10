class ArtObjectSerializer < ActiveModel::Serializer
  belongs_to :timeline
  attributes :id, :title, :description, :period, :medium, :feature_image, :thumbnail, :color, :created_at, :updated_at, :timeline_id
end
