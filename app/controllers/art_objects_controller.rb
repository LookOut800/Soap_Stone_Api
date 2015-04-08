class ArtObjectsController < ApplicationController
  before_action :set_art_object, only: [:show, :update, :destroy]

  # GET /art_objects
  # GET /art_objects.json
  def index
    @art_objects = ArtObject.all

    render json: @art_objects
  end

  # GET /art_objects/1
  # GET /art_objects/1.json
  def show
    render json: @art_object
  end

  # POST /art_objects
  # POST /art_objects.json
  def create
    @art_object = ArtObject.new(art_object_params)

    if @art_object.save
      render json: @art_object, status: :created, location: @art_object
    else
      render json: @art_object.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /art_objects/1
  # PATCH/PUT /art_objects/1.json
  def update
    @art_object = ArtObject.find(params[:id])

    if @art_object.update(art_object_params)
      head :no_content
    else
      render json: @art_object.errors, status: :unprocessable_entity
    end
  end

  # DELETE /art_objects/1
  # DELETE /art_objects/1.json
  def destroy
    @art_object.destroy

    head :no_content
  end

  private

    def set_art_object
      @art_object = ArtObject.find(params[:id])
    end

    def art_object_params
      params.require(:art_object).permit(:period, :color, :feature_image, :thumbnail, :medium, :title, :description, :thread_id)
    end
end
