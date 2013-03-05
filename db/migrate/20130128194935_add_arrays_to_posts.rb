class AddArraysToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :tags, :string, array: true
    add_column :posts, :lottery_numbers, :integer, array: true
  end
end
