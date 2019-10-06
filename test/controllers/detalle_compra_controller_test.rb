require 'test_helper'

class DetalleCompraControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get detalle_compra_index_url
    assert_response :success
  end

  test "should get new" do
    get detalle_compra_new_url
    assert_response :success
  end

  test "should get edit" do
    get detalle_compra_edit_url
    assert_response :success
  end

  test "should get _form" do
    get detalle_compra__form_url
    assert_response :success
  end

end
