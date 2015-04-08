class ArtObjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :period, :medium, :feature_image, :thumbnail, :color, :created_at, :updated_at
end
