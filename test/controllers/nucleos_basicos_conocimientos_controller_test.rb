require 'test_helper'

class NucleosBasicosConocimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nucleos_basicos_conocimiento = nucleos_basicos_conocimientos(:one)
  end

  test "should get index" do
    get nucleos_basicos_conocimientos_url, as: :json
    assert_response :success
  end

  test "should create nucleos_basicos_conocimiento" do
    assert_difference('NucleosBasicosConocimiento.count') do
      post nucleos_basicos_conocimientos_url, params: { nucleos_basicos_conocimiento: { areas_conocimiento_id: @nucleos_basicos_conocimiento.areas_conocimiento_id, nucleo_basico_conocimiento: @nucleos_basicos_conocimiento.nucleo_basico_conocimiento } }, as: :json
    end

    assert_response 201
  end

  test "should show nucleos_basicos_conocimiento" do
    get nucleos_basicos_conocimiento_url(@nucleos_basicos_conocimiento), as: :json
    assert_response :success
  end

  test "should update nucleos_basicos_conocimiento" do
    patch nucleos_basicos_conocimiento_url(@nucleos_basicos_conocimiento), params: { nucleos_basicos_conocimiento: { areas_conocimiento_id: @nucleos_basicos_conocimiento.areas_conocimiento_id, nucleo_basico_conocimiento: @nucleos_basicos_conocimiento.nucleo_basico_conocimiento } }, as: :json
    assert_response 200
  end

  test "should destroy nucleos_basicos_conocimiento" do
    assert_difference('NucleosBasicosConocimiento.count', -1) do
      delete nucleos_basicos_conocimiento_url(@nucleos_basicos_conocimiento), as: :json
    end

    assert_response 204
  end
end
