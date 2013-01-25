class Post < ActiveRecord::Base
  belongs_to :category
  include Commentable

  def designation
    title
  end
end
