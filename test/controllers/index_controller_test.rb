require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get index_new_url
    assert_response :success
  end

  test "should get edit" do
    get index_edit_url
    assert_response :success
  end

  test "should get _form" do
    get index__form_url
    assert_response :success
  end

end
