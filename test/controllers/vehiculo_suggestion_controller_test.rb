require 'test_helper'

class VehiculoSuggestionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vehiculo_suggestion_index_url
    assert_response :success
  end

end
