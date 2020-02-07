class Company < ApplicationRecord
  belongs_to :manager
  has_many :employees
end
