class AddRoleUser < ActiveRecord::Migration
  def change
    add_column :users,:role_id,:integer
  end
  
  
  def up
  end

  def down
  end
end
