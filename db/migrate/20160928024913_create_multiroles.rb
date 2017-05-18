class CreateMultiroles < ActiveRecord::Migration[5.0]
  def change
    create_table :multiroles do |t|

      t.timestamps
    end
  end
end
