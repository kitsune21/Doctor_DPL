require 'test_helper'

class SpecialitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get specialities_index_url
    assert_response :success
  end

  test "should get show" do
    get specialities_show_url
    assert_response :success
  end

  test "should get new" do
    get specialities_new_url
    assert_response :success
  end

  test "should get edit" do
    get specialities_edit_url
    assert_response :success
  end

end
