class AddCourseIdToAttendances < ActiveRecord::Migration
  def change
  	add_column :attendances, :course_id, :integer
  end
end
