class DisplayServiceItemPortlet < Cms::Portlet

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    # Your Code Goes Here
    @service_item ||= Service.published.find(params[:id])
    if cookies[:language] == "eng"
      page_title @service_item.name_eng
    elsif cookies[:language] == "rus"
      page_title @service_item.name_rus
    elsif cookies[:language] == "ukr"
      page_title @service_item.name_ukr
    elsif cookies[:language] == "de"
      page_title @service_item.name_de
    else
      page_title @service_item.name
    end
  end
    
end