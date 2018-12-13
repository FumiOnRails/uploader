class AddFilesToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :files, :json
  end
end
