class User < ActiveRecord::Base
	has_secure_password
	validates :password, :length => {:minimum => 8 }
	has_many :courses
	has_many :attendances, through: :courses
	validates :username, uniqueness: true, presence: true
	
	def self.authenticate username, password
    User.find_by_username(username).try(:authenticate, password)
  end
end
