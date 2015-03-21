class ChangeAttendeesToAttendances < ActiveRecord::Migration
  def change
  	rename_table :attendees, :attendances
  end
end
