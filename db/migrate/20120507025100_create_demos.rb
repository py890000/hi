class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.string :userInfo
      t.string :login_name
      t.string :login_password

      t.timestamps
    end
  end
end
