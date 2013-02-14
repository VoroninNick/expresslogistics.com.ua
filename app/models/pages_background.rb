class PagesBackground < ActiveRecord::Base
  acts_as_content_block
  has_attachment :background
end
