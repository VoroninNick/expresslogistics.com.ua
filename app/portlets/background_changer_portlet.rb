class BackgroundChangerPortlet < Cms::Portlet

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    @bg ||= PagesBackground.offset(rand(PagesBackground.count)).first
  end
    
end
