require 'test_helper'

class LikeSongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @like_song = like_songs(:one)
  end

  test "should get index" do
    get like_songs_url, as: :json
    assert_response :success
  end

  test "should create like_song" do
    assert_difference('LikeSong.count') do
      post like_songs_url, params: { like_song: { song_id: @like_song.song_id, user_id: @like_song.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show like_song" do
    get like_song_url(@like_song), as: :json
    assert_response :success
  end

  test "should update like_song" do
    patch like_song_url(@like_song), params: { like_song: { song_id: @like_song.song_id, user_id: @like_song.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy like_song" do
    assert_difference('LikeSong.count', -1) do
      delete like_song_url(@like_song), as: :json
    end

    assert_response 204
  end
end
