class AddRoleUser < ActiveRecord::Migration
  def change
    add_column :users,:role_id,:integer
  end
  
=begin
  def up
     add_column :users,:role_id,:integer
  end

  def down
  end
=end
end
