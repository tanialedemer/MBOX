require 'test_helper'

class GastoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gasto_index_url
    assert_response :success
  end

  test "should get new" do
    get gasto_new_url
    assert_response :success
  end

  test "should get _form" do
    get gasto__form_url
    assert_response :success
  end

  test "should get edit" do
    get gasto_edit_url
    assert_response :success
  end

  test "should get show" do
    get gasto_show_url
    assert_response :success
  end

end
