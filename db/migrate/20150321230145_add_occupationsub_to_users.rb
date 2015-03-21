class AddOccupationsubToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :occupation_sub, :string
  end
end
