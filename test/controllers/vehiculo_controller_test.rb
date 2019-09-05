require 'test_helper'

class VehiculoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vehiculo_index_url
    assert_response :success
  end

  test "should get new" do
    get vehiculo_new_url
    assert_response :success
  end

  test "should get edit" do
    get vehiculo_edit_url
    assert_response :success
  end

  test "should get _form" do
    get vehiculo__form_url
    assert_response :success
  end

end
