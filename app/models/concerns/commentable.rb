module Commentable
  extend ActiveSupport::Concern

  included do
    has_many :comments, as: :commentable
    scope :with_comments, includes(:comments)
  end
end
