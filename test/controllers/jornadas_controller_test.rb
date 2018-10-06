require 'test_helper'

class JornadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jornada = jornadas(:one)
  end

  test "should get index" do
    get jornadas_url, as: :json
    assert_response :success
  end

  test "should create jornada" do
    assert_difference('Jornada.count') do
      post jornadas_url, params: { jornada: { jornada: @jornada.jornada } }, as: :json
    end

    assert_response 201
  end

  test "should show jornada" do
    get jornada_url(@jornada), as: :json
    assert_response :success
  end

  test "should update jornada" do
    patch jornada_url(@jornada), params: { jornada: { jornada: @jornada.jornada } }, as: :json
    assert_response 200
  end

  test "should destroy jornada" do
    assert_difference('Jornada.count', -1) do
      delete jornada_url(@jornada), as: :json
    end

    assert_response 204
  end
end
