class PostObserver < ActiverRecord::Observer
  def after_save record
    # ...
  end
end
