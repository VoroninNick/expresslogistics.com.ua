class DisplayItemNewsPortlet < Cms::Portlet

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false

  def render
    @news_item ||= Article.published.find(params[:id])
    if cookies[:language] == "eng"
      page_title @news_item.name
    elsif cookies[:language] == "rus"
      page_title @news_item.name
    elsif cookies[:language] == "ukr"
      page_title @news_item.name
    elsif cookies[:language] == "de"
      page_title @news_item.name
    else
      page_title @news_item.name
    end
  end

end