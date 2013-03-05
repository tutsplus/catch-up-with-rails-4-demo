class Post < ActiveRecord::Base
  include Commentable

  belongs_to :category

  def designation
    title
  end
end
