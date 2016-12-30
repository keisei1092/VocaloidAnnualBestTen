class LikeSongsController < ApplicationController
  before_action :set_like_song, only: [:show, :update, :destroy]

  # GET /like_songs
  def index
    @like_songs = LikeSong.all

    render json: @like_songs
  end

  # GET /like_songs/1
  def show
    render json: @like_song
  end

  # POST /like_songs
  def create
    @like_song = LikeSong.new(like_song_params)

    if @like_song.save
      render json: @like_song, status: :created, location: @like_song
    else
      render json: @like_song.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /like_songs/1
  def update
    if @like_song.update(like_song_params)
      render json: @like_song
    else
      render json: @like_song.errors, status: :unprocessable_entity
    end
  end

  # DELETE /like_songs/1
  def destroy
    @like_song.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like_song
      @like_song = LikeSong.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def like_song_params
      params.require(:like_song).permit(:user_id, :song_id)
    end
end
