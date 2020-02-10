class Manager < ApplicationRecord
    has_many :companies
    has_many :employees, through: :companies
    has_secure_password 
    validates :username, :firstName, :lastName, :password, :email, presence: true
    validates :username, :email, uniqueness: true
    validates :password, length: {in: 6..20}


end
