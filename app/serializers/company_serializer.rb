class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :staff_count
  has_one :manager
end
