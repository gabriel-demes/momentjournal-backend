class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :entrycount, :myguests
  has_one :user
  has_many :entries
end
