class Service < ActiveRecord::Base
  acts_as_content_block

  #extend FriendlyId
  #friendly_id :name, :use => :slugged

  validates :slug, uniqueness: true, presence: true
  #before_validation :generate_slug

  has_attachment :icon_home
  has_attachment :icon_main, :styles => { :main => "370x370#", :cat_main => "159x159#", :admin => "100x100#" }
  has_many_attachments :gallery, :styles => { :big => "370x370#", :fancy => "800x600#" }

  # Lets create url friendly links
  def to_param
    slug
  end

  def generate_slug
    self.slug ||= name_eng.parameterize
  end

  #validates_presence_of :name, :name_de, :name_eng, :name_rus, :name_ukr, :intro, :intro_de, :intro_eng, :intro_rus, :intro_ukr, :descr, :descr_de, :descr_eng, :descr_rus, :descr_ukr
  #validates_attachment_presence :icon_main
end
