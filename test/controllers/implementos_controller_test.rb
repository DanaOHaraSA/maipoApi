require 'test_helper'

class ImplementosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @implemento = implementos(:one)
  end

  test "should get index" do
    get implementos_url, as: :json
    assert_response :success
  end

  test "should create implemento" do
    assert_difference('Implemento.count') do
      post implementos_url, params: { implemento: { cantidad: @implemento.cantidad, local_id: @implemento.local_id, marca: @implemento.marca, nombre: @implemento.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show implemento" do
    get implemento_url(@implemento), as: :json
    assert_response :success
  end

  test "should update implemento" do
    patch implemento_url(@implemento), params: { implemento: { cantidad: @implemento.cantidad, local_id: @implemento.local_id, marca: @implemento.marca, nombre: @implemento.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy implemento" do
    assert_difference('Implemento.count', -1) do
      delete implemento_url(@implemento), as: :json
    end

    assert_response 204
  end
end
