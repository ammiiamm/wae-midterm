class CreateJoinTable2 < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :course_offerings do |t|
       t.index [:user_id, :course_offering_id]
       t.index [:course_offering_id, :user_id]
    end
  end
end
