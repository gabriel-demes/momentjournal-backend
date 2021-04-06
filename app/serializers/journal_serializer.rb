class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :entrycount
  has_one :user
end
