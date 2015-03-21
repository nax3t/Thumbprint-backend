class RemoveSubFieldsFromUser < ActiveRecord::Migration
  def change
  	remove_column :users, :occupation_sub
  	remove_column :users, :education_sub
  end
end
