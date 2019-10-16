require 'test_helper'

class PagoFacturaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pago_factura_index_url
    assert_response :success
  end

  test "should get new" do
    get pago_factura_new_url
    assert_response :success
  end

  test "should get edit" do
    get pago_factura_edit_url
    assert_response :success
  end

  test "should get _form" do
    get pago_factura__form_url
    assert_response :success
  end

  test "should get show" do
    get pago_factura_show_url
    assert_response :success
  end

end
