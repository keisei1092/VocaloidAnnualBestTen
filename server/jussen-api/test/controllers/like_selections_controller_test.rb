require 'test_helper'

class LikeSelectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @like_selection = like_selections(:one)
  end

  test "should get index" do
    get like_selections_url, as: :json
    assert_response :success
  end

  test "should create like_selection" do
    assert_difference('LikeSelection.count') do
      post like_selections_url, params: { like_selection: { selection_id: @like_selection.selection_id, user_id: @like_selection.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show like_selection" do
    get like_selection_url(@like_selection), as: :json
    assert_response :success
  end

  test "should update like_selection" do
    patch like_selection_url(@like_selection), params: { like_selection: { selection_id: @like_selection.selection_id, user_id: @like_selection.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy like_selection" do
    assert_difference('LikeSelection.count', -1) do
      delete like_selection_url(@like_selection), as: :json
    end

    assert_response 204
  end
end
