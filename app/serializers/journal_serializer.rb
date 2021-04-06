class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :user
end
