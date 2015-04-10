class UserSerializer < ActiveModel::Serializer
  has_many :timelines
  attributes :id, :username, :first_name, :last_name, :token, :created_at, :updated_at
end
