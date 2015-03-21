class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :room
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :courses, :users
  end
end
