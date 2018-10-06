require 'test_helper'

class CaractersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caracter = caracters(:one)
  end

  test "should get index" do
    get caracters_url, as: :json
    assert_response :success
  end

  test "should create caracter" do
    assert_difference('Caracter.count') do
      post caracters_url, params: { caracter: { caracter_institucion: @caracter.caracter_institucion } }, as: :json
    end

    assert_response 201
  end

  test "should show caracter" do
    get caracter_url(@caracter), as: :json
    assert_response :success
  end

  test "should update caracter" do
    patch caracter_url(@caracter), params: { caracter: { caracter_institucion: @caracter.caracter_institucion } }, as: :json
    assert_response 200
  end

  test "should destroy caracter" do
    assert_difference('Caracter.count', -1) do
      delete caracter_url(@caracter), as: :json
    end

    assert_response 204
  end
end
