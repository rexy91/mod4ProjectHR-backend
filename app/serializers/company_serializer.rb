class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :staff_count, :schedule
  has_many :employees


end
