class AddMetaInfoToImages < ActiveRecord::Migration
  def change
    add_column :images, :meta, :hstore
  end
end
