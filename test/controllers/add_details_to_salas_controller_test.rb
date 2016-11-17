require 'test_helper'

class AddDetailsToSalasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_details_to_sala = add_details_to_salas(:one)
  end

  test "should get index" do
    get add_details_to_salas_url, as: :json
    assert_response :success
  end

  test "should create add_details_to_sala" do
    assert_difference('AddDetailsToSala.count') do
      post add_details_to_salas_url, params: { add_details_to_sala: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show add_details_to_sala" do
    get add_details_to_sala_url(@add_details_to_sala), as: :json
    assert_response :success
  end

  test "should update add_details_to_sala" do
    patch add_details_to_sala_url(@add_details_to_sala), params: { add_details_to_sala: {  } }, as: :json
    assert_response 200
  end

  test "should destroy add_details_to_sala" do
    assert_difference('AddDetailsToSala.count', -1) do
      delete add_details_to_sala_url(@add_details_to_sala), as: :json
    end

    assert_response 204
  end
end
