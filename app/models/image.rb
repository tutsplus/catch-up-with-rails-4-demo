class Image < ActiveRecord::Base
  include Commentable
  store_accessor :meta, :camera, :lens, :format

  def designation
    name
  end
end
