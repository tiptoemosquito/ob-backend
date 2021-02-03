require 'test_helper'

class TheatersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theater = theaters(:one)
  end

  test "should get index" do
    get theaters_url, as: :json
    assert_response :success
  end

  test "should create theater" do
    assert_difference('Theater.count') do
      post theaters_url, params: { theater: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show theater" do
    get theater_url(@theater), as: :json
    assert_response :success
  end

  test "should update theater" do
    patch theater_url(@theater), params: { theater: {  } }, as: :json
    assert_response 200
  end

  test "should destroy theater" do
    assert_difference('Theater.count', -1) do
      delete theater_url(@theater), as: :json
    end

    assert_response 204
  end
end
