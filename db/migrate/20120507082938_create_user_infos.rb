class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :loginer
      t.string :password
      t.string :email
      t.string :age
      t.datetime :creatTime
      t.datetime :updateTime

      t.timestamps
    end
  end
end
