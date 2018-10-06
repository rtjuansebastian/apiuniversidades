require 'test_helper'

class SedesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sede = sedes(:one)
  end

  test "should get index" do
    get sedes_url, as: :json
    assert_response :success
  end

  test "should create sede" do
    assert_difference('Sede.count') do
      post sedes_url, params: { sede: { ciudad_id: @sede.ciudad_id, direccion: @sede.direccion, nombre: @sede.nombre, universidad_id: @sede.universidad_id } }, as: :json
    end

    assert_response 201
  end

  test "should show sede" do
    get sede_url(@sede), as: :json
    assert_response :success
  end

  test "should update sede" do
    patch sede_url(@sede), params: { sede: { ciudad_id: @sede.ciudad_id, direccion: @sede.direccion, nombre: @sede.nombre, universidad_id: @sede.universidad_id } }, as: :json
    assert_response 200
  end

  test "should destroy sede" do
    assert_difference('Sede.count', -1) do
      delete sede_url(@sede), as: :json
    end

    assert_response 204
  end
end
