class RemoveImgUrlFromPosts < ActiveRecord::Migration
  def change
  	remove_column :posts, :img_url
  end
end
