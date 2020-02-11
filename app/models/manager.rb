class Manager < ApplicationRecord
    has_many :companies, dependent: :destroy
    has_many :employees, through: :companies
    has_secure_password 
    validates :username, :firstName, :lastName, :password, :email, presence: true
    validates :username, :email, uniqueness: true
    validates :password, length: {in: 6..20}
    validates :username, length: {in: 6..10}
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    
end
