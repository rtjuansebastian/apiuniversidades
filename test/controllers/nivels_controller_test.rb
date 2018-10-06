require 'test_helper'

class NivelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nivel = nivels(:one)
  end

  test "should get index" do
    get nivels_url, as: :json
    assert_response :success
  end

  test "should create nivel" do
    assert_difference('Nivel.count') do
      post nivels_url, params: { nivel: { nivel_formacion: @nivel.nivel_formacion } }, as: :json
    end

    assert_response 201
  end

  test "should show nivel" do
    get nivel_url(@nivel), as: :json
    assert_response :success
  end

  test "should update nivel" do
    patch nivel_url(@nivel), params: { nivel: { nivel_formacion: @nivel.nivel_formacion } }, as: :json
    assert_response 200
  end

  test "should destroy nivel" do
    assert_difference('Nivel.count', -1) do
      delete nivel_url(@nivel), as: :json
    end

    assert_response 204
  end
end
