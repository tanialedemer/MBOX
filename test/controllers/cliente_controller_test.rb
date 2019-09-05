require 'test_helper'

class ClienteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cliente_index_url
    assert_response :success
  end

  test "should get new" do
    get cliente_new_url
    assert_response :success
  end

  test "should get edit" do
    get cliente_edit_url
    assert_response :success
  end

  test "should get _form" do
    get cliente__form_url
    assert_response :success
  end

end
