class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :staff_count
  has_many :employees

  url [:employees]
end
