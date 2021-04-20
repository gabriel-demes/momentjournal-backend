class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :sentiment, :created_at
  
end
