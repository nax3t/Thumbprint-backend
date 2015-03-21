class AddEmailEtcToUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :username, :email
  	add_column :users, :first, :string
  	add_column :users, :last, :string
  	add_column :users, :zip, :string
  	add_column :users, :education, :string
  	add_column :users, :education_sub, :string
  	add_column :users, :occupation, :string
  	add_column :users, :occupation_sub, :string
  end
end
