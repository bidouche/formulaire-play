class User < ApplicationRecord
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates_uniqueness_of :username
    validates_uniqueness_of :email
end
