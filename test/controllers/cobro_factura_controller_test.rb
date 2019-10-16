require 'test_helper'

class CobroFacturaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cobro_factura_index_url
    assert_response :success
  end

  test "should get new" do
    get cobro_factura_new_url
    assert_response :success
  end

  test "should get edit" do
    get cobro_factura_edit_url
    assert_response :success
  end

  test "should get _form" do
    get cobro_factura__form_url
    assert_response :success
  end

end
