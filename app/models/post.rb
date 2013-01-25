class Post < ActiveRecord::Base
  belongs_to :category
  has_many :comments
  include Commentable

  def designation
    title
  end
end
