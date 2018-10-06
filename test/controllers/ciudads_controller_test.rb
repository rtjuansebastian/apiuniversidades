require 'test_helper'

class CiudadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ciudad = ciudads(:one)
  end

  test "should get index" do
    get ciudads_url, as: :json
    assert_response :success
  end

  test "should create ciudad" do
    assert_difference('Ciudad.count') do
      post ciudads_url, params: { ciudad: { departamento_id: @ciudad.departamento_id, nombre: @ciudad.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show ciudad" do
    get ciudad_url(@ciudad), as: :json
    assert_response :success
  end

  test "should update ciudad" do
    patch ciudad_url(@ciudad), params: { ciudad: { departamento_id: @ciudad.departamento_id, nombre: @ciudad.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy ciudad" do
    assert_difference('Ciudad.count', -1) do
      delete ciudad_url(@ciudad), as: :json
    end

    assert_response 204
  end
end
