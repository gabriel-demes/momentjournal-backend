class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :sentiment
  has_one :journal
end
