require 'test_helper'

class UsuarioAsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_a = usuario_as(:one)
  end

  test "should get index" do
    get usuario_as_url, as: :json
    assert_response :success
  end

  test "should create usuario_a" do
    assert_difference('UsuarioA.count') do
      post usuario_as_url, params: { usuario_a: { clave: @usuario_a.clave, email: @usuario_a.email, nombre: @usuario_a.nombre, telefono: @usuario_a.telefono } }, as: :json
    end

    assert_response 201
  end

  test "should show usuario_a" do
    get usuario_a_url(@usuario_a), as: :json
    assert_response :success
  end

  test "should update usuario_a" do
    patch usuario_a_url(@usuario_a), params: { usuario_a: { clave: @usuario_a.clave, email: @usuario_a.email, nombre: @usuario_a.nombre, telefono: @usuario_a.telefono } }, as: :json
    assert_response 200
  end

  test "should destroy usuario_a" do
    assert_difference('UsuarioA.count', -1) do
      delete usuario_a_url(@usuario_a), as: :json
    end

    assert_response 204
  end
end
