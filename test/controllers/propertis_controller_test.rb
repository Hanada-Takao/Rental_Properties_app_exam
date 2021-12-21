require 'test_helper'

class PropertisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get propertis_index_url
    assert_response :success
  end

end
