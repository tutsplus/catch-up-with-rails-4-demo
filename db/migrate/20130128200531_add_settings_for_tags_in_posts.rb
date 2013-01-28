class AddSettingsForTagsInPosts < ActiveRecord::Migration
  def up
    change_column :posts, :tags, :string, array:true, default: '{ruby}'
  end
  
  def down
    change_column :posts, :tags, :string, array: true
  end
end
