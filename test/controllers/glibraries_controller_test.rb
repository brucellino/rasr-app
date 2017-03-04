require 'test_helper'

class GlibrariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glibrary = glibraries(:one)
  end

  test "should get index" do
    get glibraries_url
    assert_response :success
  end

  test "should get new" do
    get new_glibrary_url
    assert_response :success
  end

  test "should create glibrary" do
    assert_difference('Glibrary.count') do
      post glibraries_url, params: { glibrary: {  } }
    end

    assert_redirected_to glibrary_url(Glibrary.last)
  end

  test "should show glibrary" do
    get glibrary_url(@glibrary)
    assert_response :success
  end

  test "should get edit" do
    get edit_glibrary_url(@glibrary)
    assert_response :success
  end

  test "should update glibrary" do
    patch glibrary_url(@glibrary), params: { glibrary: {  } }
    assert_redirected_to glibrary_url(@glibrary)
  end

  test "should destroy glibrary" do
    assert_difference('Glibrary.count', -1) do
      delete glibrary_url(@glibrary)
    end

    assert_redirected_to glibraries_url
  end
end
