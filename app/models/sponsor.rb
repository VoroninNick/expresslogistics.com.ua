class Sponsor < ActiveRecord::Base
  acts_as_content_block
  has_attachment :logo
end
