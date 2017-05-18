class AddColumnToMultirole < ActiveRecord::Migration[5.0]
  def change
    add_column :multiroles, :user_id, :integer
    add_column :multiroles, :role_id, :integer
  end
end
