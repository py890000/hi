class AddPartToArticles < ActiveRecord::Migration
  def change
    add_column :articles,:part_id,:integer
  end
end
