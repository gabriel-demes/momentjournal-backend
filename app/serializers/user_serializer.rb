class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name,:code, :email, :my_journals, :my_entries, :goallists, :guest_journals
end
