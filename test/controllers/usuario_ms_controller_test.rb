require 'test_helper'

class UsuarioMsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_m = usuario_ms(:one)
  end

  test "should get index" do
    get usuario_ms_url, as: :json
    assert_response :success
  end

  test "should create usuario_m" do
    assert_difference('UsuarioM.count') do
      post usuario_ms_url, params: { usuario_m: { calificacion: @usuario_m.calificacion, clave: @usuario_m.clave, email: @usuario_m.email, nombre: @usuario_m.nombre, rango: @usuario_m.rango, telefono: @usuario_m.telefono } }, as: :json
    end

    assert_response 201
  end

  test "should show usuario_m" do
    get usuario_m_url(@usuario_m), as: :json
    assert_response :success
  end

  test "should update usuario_m" do
    patch usuario_m_url(@usuario_m), params: { usuario_m: { calificacion: @usuario_m.calificacion, clave: @usuario_m.clave, email: @usuario_m.email, nombre: @usuario_m.nombre, rango: @usuario_m.rango, telefono: @usuario_m.telefono } }, as: :json
    assert_response 200
  end

  test "should destroy usuario_m" do
    assert_difference('UsuarioM.count', -1) do
      delete usuario_m_url(@usuario_m), as: :json
    end

    assert_response 204
  end
end
