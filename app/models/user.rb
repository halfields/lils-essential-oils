class User < ApplicationRecord

	before_save {self.email = email.downcase} #ensures program can hanle mixed case email even if database adapter cannot handle mixed case indexes
	validates :name, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, 
										uniqueness: {case_sensitive: false}
	validates :password, presence: true, length: {minimum: 8}
	has_secure_password
end
