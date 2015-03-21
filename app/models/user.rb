class User < ActiveRecord::Base
	has_secure_password
	validates :password, :length => {:minimum => 8 }
	validates :email, uniqueness: true, presence: true
	validates :zip, presence: true, :length => {:minimum => 10}
	validates :first, presence: true
	validates :last, presence: true
	validates :education, presence: true
	validates :education_sub, presence: true
	validates :occupation, presence: true
	validates :occupation_sub, presence: true

	def self.authenticate email, password
    User.find_by_email(email).try(:authenticate, password)
  end
end
