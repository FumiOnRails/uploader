class ChangeDatatypeFilesOfPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :files, :json
  end
end
