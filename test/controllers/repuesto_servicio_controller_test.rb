require 'test_helper'

class RepuestoServicioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get repuesto_servicio_index_url
    assert_response :success
  end

  test "should get new" do
    get repuesto_servicio_new_url
    assert_response :success
  end

  test "should get edit" do
    get repuesto_servicio_edit_url
    assert_response :success
  end

  test "should get _form" do
    get repuesto_servicio__form_url
    assert_response :success
  end

end
