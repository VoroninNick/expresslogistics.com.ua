require File.join(File.dirname(__FILE__), '/../../test_helper')

class DisplayServiceItemTest < ActiveSupport::TestCase

  test "Should be able to create new instance of a portlet" do
    assert DisplayServiceItemPortlet.create!(:name => "New Portlet")
  end
  
end