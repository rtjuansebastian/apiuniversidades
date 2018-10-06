require 'test_helper'

class ModalidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @modalidad = modalidads(:one)
  end

  test "should get index" do
    get modalidads_url, as: :json
    assert_response :success
  end

  test "should create modalidad" do
    assert_difference('Modalidad.count') do
      post modalidads_url, params: { modalidad: { modalidad: @modalidad.modalidad } }, as: :json
    end

    assert_response 201
  end

  test "should show modalidad" do
    get modalidad_url(@modalidad), as: :json
    assert_response :success
  end

  test "should update modalidad" do
    patch modalidad_url(@modalidad), params: { modalidad: { modalidad: @modalidad.modalidad } }, as: :json
    assert_response 200
  end

  test "should destroy modalidad" do
    assert_difference('Modalidad.count', -1) do
      delete modalidad_url(@modalidad), as: :json
    end

    assert_response 204
  end
end
