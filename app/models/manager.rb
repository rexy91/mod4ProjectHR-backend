class Manager < ApplicationRecord
    has_many :companies
    has_many :employees, through: :companies
    
    has_secure_password 

end
