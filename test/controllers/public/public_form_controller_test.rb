require "test_helper"

class Public::PublicFormControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get public_public_form_top_url
    assert_response :success
  end
end
