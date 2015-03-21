class AddEducationSubToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :education_sub, :string
  end
end
