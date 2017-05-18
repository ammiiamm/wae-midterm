class CreateCourseOfferings < ActiveRecord::Migration[5.0]
  def change
    create_table :course_offerings do |t|
      t.string :course_code
      t.string :title
      t.integer :year
      t.integer :semester

      t.timestamps
    end
  end
end
