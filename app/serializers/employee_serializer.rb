class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_of_birth, :email
  has_one :company
end
