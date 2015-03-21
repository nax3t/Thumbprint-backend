class AddSecretToAttendance < ActiveRecord::Migration
  def change
  	add_column :attendances, :secret, :string
  end
end
