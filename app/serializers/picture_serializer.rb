class PictureSerializer < ActiveModel::Serializer
  attributes :id
  has_one :event
end
