class RubricSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :name
end
