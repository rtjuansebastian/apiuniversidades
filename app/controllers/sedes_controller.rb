class SedesController < ApplicationController
  before_action :set_sede, only: [:show, :update, :destroy]

  # GET /sedes
  def index
    @sedes = Sede.all

    render json: @sedes
  end

  # GET /sedes/1
  def show
    render json: @sede
  end

  # POST /sedes
  def create
    @sede = Sede.new(sede_params)

    if @sede.save
      render json: @sede, status: :created, location: @sede
    else
      render json: @sede.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sedes/1
  def update
    if @sede.update(sede_params)
      render json: @sede
    else
      render json: @sede.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sedes/1
  def destroy
    @sede.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sede
      @sede = Sede.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sede_params
      params.require(:sede).permit(:nombre, :direccion, :universidad_id, :ciudad_id)
    end
end
