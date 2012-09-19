class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :role_name
      t.string :role_desc
      t.integer :state

      t.timestamps
    end
  end
end
