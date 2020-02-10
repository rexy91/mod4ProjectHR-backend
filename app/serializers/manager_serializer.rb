class ManagerSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :email, :username
  has_many :companies

end
