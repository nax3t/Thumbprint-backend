class RemoveCourseIdFromAttendances < ActiveRecord::Migration
  def change
  	remove_column :attendances, :course_id
  end
end
