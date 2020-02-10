class ManagerSerializer < ActiveModel::Serializer
  attributes :id, :name, :username

  has_many :companies

end
