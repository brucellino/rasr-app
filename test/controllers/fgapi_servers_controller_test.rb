require 'test_helper'

class FgapiServersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fgapi_server = fgapi_servers(:one)
  end

  test "should get index" do
    get fgapi_servers_url
    assert_response :success
  end

  test "should get new" do
    get new_fgapi_server_url
    assert_response :success
  end

  test "should create fgapi_server" do
    assert_difference('FgapiServer.count') do
      post fgapi_servers_url, params: { fgapi_server: {  } }
    end

    assert_redirected_to fgapi_server_url(FgapiServer.last)
  end

  test "should show fgapi_server" do
    get fgapi_server_url(@fgapi_server)
    assert_response :success
  end

  test "should get edit" do
    get edit_fgapi_server_url(@fgapi_server)
    assert_response :success
  end

  test "should update fgapi_server" do
    patch fgapi_server_url(@fgapi_server), params: { fgapi_server: {  } }
    assert_redirected_to fgapi_server_url(@fgapi_server)
  end

  test "should destroy fgapi_server" do
    assert_difference('FgapiServer.count', -1) do
      delete fgapi_server_url(@fgapi_server)
    end

    assert_redirected_to fgapi_servers_url
  end
end
