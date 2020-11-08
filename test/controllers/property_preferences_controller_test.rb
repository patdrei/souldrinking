require 'test_helper'

class PropertyPreferencesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get property_preferences_create_url
    assert_response :success
  end

end
