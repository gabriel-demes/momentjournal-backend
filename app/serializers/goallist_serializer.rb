class GoallistSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :goals
end
