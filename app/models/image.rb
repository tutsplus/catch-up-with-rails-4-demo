class Image < ActiveRecord::Base
  include Commentable
  store_accessor :meta, :camera, :lens, :format

  store_accessor :meta, :camera, :resolution
  def designation
    name
  end
end
