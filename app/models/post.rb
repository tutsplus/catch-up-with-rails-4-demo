class Post < ActiveRecord::Base
  belongs_to :category
<<<<<<< HEAD
=======
  include Commentable

  def designation
    title
  end
>>>>>>> 5787bd2... Add comments.
end
