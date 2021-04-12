class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :entrycount
  has_one :user
  has_many :entries
end
