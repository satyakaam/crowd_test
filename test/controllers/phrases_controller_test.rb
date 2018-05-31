require 'test_helper'

class PhrasesControllerTest < ActionDispatch::IntegrationTest
  test "should get display" do
    get phrases_display_url
    assert_response :success
  end

end
