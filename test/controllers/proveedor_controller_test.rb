require 'test_helper'

class ProveedorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get proveedor_index_url
    assert_response :success
  end

  test "should get new" do
    get proveedor_new_url
    assert_response :success
  end

  test "should get edit" do
    get proveedor_edit_url
    assert_response :success
  end

  test "should get _form" do
    get proveedor__form_url
    assert_response :success
  end

end
