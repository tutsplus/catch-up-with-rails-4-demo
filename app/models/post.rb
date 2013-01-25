class Post < ActiveRecord::Base
  belongs_to :category
  has_many :comments, as: :commentable

  include Commentable

  def designation
    title
  end
end
