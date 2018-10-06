class CiudadsController < ApplicationController
  before_action :set_ciudad, only: [:show, :update, :destroy]

  # GET /ciudads
  def index
    @ciudads = Ciudad.all

    render json: @ciudads
  end

  # GET /ciudads/1
  def show
    render json: @ciudad
  end

  # POST /ciudads
  def create
    @ciudad = Ciudad.new(ciudad_params)

    if @ciudad.save
      render json: @ciudad, status: :created, location: @ciudad
    else
      render json: @ciudad.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ciudads/1
  def update
    if @ciudad.update(ciudad_params)
      render json: @ciudad
    else
      render json: @ciudad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ciudads/1
  def destroy
    @ciudad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ciudad
      @ciudad = Ciudad.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ciudad_params
      params.require(:ciudad).permit(:nombre, :departamento_id)
    end
end
