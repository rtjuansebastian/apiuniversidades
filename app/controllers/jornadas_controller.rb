class JornadasController < ApplicationController
  before_action :set_jornada, only: [:show, :update, :destroy]

  # GET /jornadas
  def index
    @jornadas = Jornada.all

    render json: @jornadas
  end

  # GET /jornadas/1
  def show
    render json: @jornada
  end

  # POST /jornadas
  def create
    @jornada = Jornada.new(jornada_params)

    if @jornada.save
      render json: @jornada, status: :created, location: @jornada
    else
      render json: @jornada.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jornadas/1
  def update
    if @jornada.update(jornada_params)
      render json: @jornada
    else
      render json: @jornada.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jornadas/1
  def destroy
    @jornada.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jornada
      @jornada = Jornada.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def jornada_params
      params.require(:jornada).permit(:jornada)
    end
end
