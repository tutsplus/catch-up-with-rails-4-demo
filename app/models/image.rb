class Image < ActiveRecord::Base
  include Commentable

  def designation
    name
  end
end
