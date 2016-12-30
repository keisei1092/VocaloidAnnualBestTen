class LikeSelectionsController < ApplicationController
  before_action :set_like_selection, only: [:show, :update, :destroy]

  # GET /like_selections
  def index
    @like_selections = LikeSelection.all

    render json: @like_selections
  end

  # GET /like_selections/1
  def show
    render json: @like_selection
  end

  # POST /like_selections
  def create
    @like_selection = LikeSelection.new(like_selection_params)

    if @like_selection.save
      render json: @like_selection, status: :created, location: @like_selection
    else
      render json: @like_selection.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /like_selections/1
  def update
    if @like_selection.update(like_selection_params)
      render json: @like_selection
    else
      render json: @like_selection.errors, status: :unprocessable_entity
    end
  end

  # DELETE /like_selections/1
  def destroy
    @like_selection.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like_selection
      @like_selection = LikeSelection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def like_selection_params
      params.require(:like_selection).permit(:user_id, :selection_id)
    end
end
