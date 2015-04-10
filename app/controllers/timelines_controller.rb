class TimelinesController < ApplicationController
  # before_action :set_timeline, only: [:show, :update, :destroy]

  # GET /timelines
  # GET /timelines.json
  def index
    @user = User.find(params[:user_id])
    @timelines = @user.timelines

    render json: @timelines
  end

  # GET /timelines/1
  # GET /timelines/1.json
  def show
    @timeline = Timeline.find(params[:id])
    render json: @timeline
  end

  # POST /timelines
  # POST /timelines.json
  def create
    @timeline = Timeline.new(timeline_params)

    if @timeline.save
      render json: @timeline, status: :created, location: @timeline
    else
      render json: @timeline.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /timelines/1
  # PATCH/PUT /timelines/1.json
  def update
    @timeline = Timeline.find(params[:id])

    if @timeline.update(timeline_params)
      head :no_content
    else
      render json: @timeline.errors, status: :unprocessable_entity
    end
  end

  # DELETE /timelines/1
  # DELETE /timelines/1.json
  def destroy
    @timeline.destroy

    head :no_content
  end

  private

    def set_timeline
      @timeline = Timeline.find(params[:id])
    end

    def timeline_params
      params.require(:timeline).permit(:user_id, :title, :description)
    end
end
