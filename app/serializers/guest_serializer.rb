class GuestSerializer < ActiveModel::Serializer
  attributes :id
  has_one :journal
end
