require 'test_helper'

class AreasConocimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @areas_conocimiento = areas_conocimientos(:one)
  end

  test "should get index" do
    get areas_conocimientos_url, as: :json
    assert_response :success
  end

  test "should create areas_conocimiento" do
    assert_difference('AreasConocimiento.count') do
      post areas_conocimientos_url, params: { areas_conocimiento: { nombre: @areas_conocimiento.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show areas_conocimiento" do
    get areas_conocimiento_url(@areas_conocimiento), as: :json
    assert_response :success
  end

  test "should update areas_conocimiento" do
    patch areas_conocimiento_url(@areas_conocimiento), params: { areas_conocimiento: { nombre: @areas_conocimiento.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy areas_conocimiento" do
    assert_difference('AreasConocimiento.count', -1) do
      delete areas_conocimiento_url(@areas_conocimiento), as: :json
    end

    assert_response 204
  end
end
