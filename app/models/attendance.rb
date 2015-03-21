class Attendance < ActiveRecord::Base
	belongs_to :course
	belongs_to :user
	validates :name, presence: true
end
