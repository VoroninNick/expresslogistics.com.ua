class DisplayServiceHomePortlet < Cms::Portlet

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false

  def render
    @services_home ||= Service.published.limit(self.limit).order("created_at DESC")
  end

end