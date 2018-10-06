class NucleosBasicosConocimientosController < ApplicationController
  before_action :set_nucleos_basicos_conocimiento, only: [:show, :update, :destroy]

  # GET /nucleos_basicos_conocimientos
  def index
    @nucleos_basicos_conocimientos = NucleosBasicosConocimiento.all

    render json: @nucleos_basicos_conocimientos
  end

  # GET /nucleos_basicos_conocimientos/1
  def show
    render json: @nucleos_basicos_conocimiento
  end

  # POST /nucleos_basicos_conocimientos
  def create
    @nucleos_basicos_conocimiento = NucleosBasicosConocimiento.new(nucleos_basicos_conocimiento_params)

    if @nucleos_basicos_conocimiento.save
      render json: @nucleos_basicos_conocimiento, status: :created, location: @nucleos_basicos_conocimiento
    else
      render json: @nucleos_basicos_conocimiento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nucleos_basicos_conocimientos/1
  def update
    if @nucleos_basicos_conocimiento.update(nucleos_basicos_conocimiento_params)
      render json: @nucleos_basicos_conocimiento
    else
      render json: @nucleos_basicos_conocimiento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nucleos_basicos_conocimientos/1
  def destroy
    @nucleos_basicos_conocimiento.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nucleos_basicos_conocimiento
      @nucleos_basicos_conocimiento = NucleosBasicosConocimiento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nucleos_basicos_conocimiento_params
      params.require(:nucleos_basicos_conocimiento).permit(:nucleo_basico_conocimiento, :areas_conocimiento_id)
    end
end
