class Company < ApplicationRecord
  belongs_to :manager
  has_many :employees, dependent: :destroy
  serialize :schedule, Array
end
