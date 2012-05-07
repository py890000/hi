class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.references :userInfo

      t.timestamps
    end
    add_index :articles, :userInfo_id
  end
end
