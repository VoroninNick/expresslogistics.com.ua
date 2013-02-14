class Article < ActiveRecord::Base
  acts_as_content_block
  has_attachment :avatar, :styles => {:cat => "159x159#", :main => "370x370#", :admin => "100x100#"}
  has_many_attachments :photo, :styles => {:big => "370x370#", :fancy => "800x600#"}
end
