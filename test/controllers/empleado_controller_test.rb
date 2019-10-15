require 'test_helper'

class EmpleadoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get empleado_index_url
    assert_response :success
  end

  test "should get new" do
    get empleado_new_url
    assert_response :success
  end

  test "should get _form" do
    get empleado__form_url
    assert_response :success
  end

  test "should get edit" do
    get empleado_edit_url
    assert_response :success
  end

end
