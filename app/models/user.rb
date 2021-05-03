class User < ApplicationRecord
    has_many :goals

    validates :username, uniqueness: true
    validates :username, presence: true

    has_secure_password
end
