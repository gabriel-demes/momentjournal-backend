class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :email, :my_journals, :my_entries
end
