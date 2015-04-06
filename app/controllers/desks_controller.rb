class DesksController < ApplicationController
  before_action :set_desk, only: [:show, :update, :destroy]

  # GET /desks
  # GET /desks.json
  def index
    @desks = Desk.all

    render json: @desks
  end

  # GET /desks/1
  # GET /desks/1.json
  def show
    render json: @desk
  end

  # POST /desks
  # POST /desks.json
  def create
    @desk = Desk.new(desk_params)

    if @desk.save
      render json: @desk, status: :created, location: @desk
    else
      render json: @desk.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /desks/1
  # PATCH/PUT /desks/1.json
  def update
    @desk = Desk.find(params[:id])

    if @desk.update(desk_params)
      head :no_content
    else
      render json: @desk.errors, status: :unprocessable_entity
    end
  end

  # DELETE /desks/1
  # DELETE /desks/1.json
  def destroy
    @desk.destroy

    head :no_content
  end

  private

    def set_desk
      @desk = Desk.find(params[:id])
    end

    def desk_params
      params.require(:desk).permit(:name, :timestamps, :user_id)
    end
end
