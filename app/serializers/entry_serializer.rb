class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :sentiment
  
end
