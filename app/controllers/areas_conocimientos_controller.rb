class AreasConocimientosController < ApplicationController
  before_action :set_areas_conocimiento, only: [:show, :update, :destroy]

  # GET /areas_conocimientos
  def index
    @areas_conocimientos = AreasConocimiento.all

    render json: @areas_conocimientos
  end

  # GET /areas_conocimientos/1
  def show
    render json: @areas_conocimiento
  end

  # POST /areas_conocimientos
  def create
    @areas_conocimiento = AreasConocimiento.new(areas_conocimiento_params)

    if @areas_conocimiento.save
      render json: @areas_conocimiento, status: :created, location: @areas_conocimiento
    else
      render json: @areas_conocimiento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /areas_conocimientos/1
  def update
    if @areas_conocimiento.update(areas_conocimiento_params)
      render json: @areas_conocimiento
    else
      render json: @areas_conocimiento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /areas_conocimientos/1
  def destroy
    @areas_conocimiento.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_areas_conocimiento
      @areas_conocimiento = AreasConocimiento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def areas_conocimiento_params
      params.require(:areas_conocimiento).permit(:nombre)
    end
end
