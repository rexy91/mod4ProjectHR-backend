class ManagerSerializer < ActiveModel::Serializer
  attributes :id, :name, :username

  has_many :companies

  url [:companies]

end
