require 'test_helper'

class CompraControllerTest < ActionDispatch::IntegrationTest
  test "should get indexnew" do
    get compra_indexnew_url
    assert_response :success
  end

  test "should get edit" do
    get compra_edit_url
    assert_response :success
  end

  test "should get _form" do
    get compra__form_url
    assert_response :success
  end

end
