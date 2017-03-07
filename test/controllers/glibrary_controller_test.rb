require 'test_helper'

class GlibraryControllerTest < ActionDispatch::IntegrationTest
  test "should get check_status" do
    get glibrary_check_status_url
    assert_response :error
  end

end
