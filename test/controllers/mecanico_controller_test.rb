require 'test_helper'

class MecanicoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mecanico_index_url
    assert_response :success
  end

  test "should get _form" do
    get mecanico__form_url
    assert_response :success
  end

  test "should get new" do
    get mecanico_new_url
    assert_response :success
  end

  test "should get edit" do
    get mecanico_edit_url
    assert_response :success
  end

end
