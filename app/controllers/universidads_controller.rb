class UniversidadsController < ApplicationController
  before_action :set_universidad, only: [:show, :update, :destroy]

  # GET /universidads
  def index
    @universidads = Universidad.all

    render json: @universidads
  end

  # GET /universidads/1
  def show
    render json: @universidad
  end

  # POST /universidads
  def create
    @universidad = Universidad.new(universidad_params)

    if @universidad.save
      render json: @universidad, status: :created, location: @universidad
    else
      render json: @universidad.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /universidads/1
  def update
    if @universidad.update(universidad_params)
      render json: @universidad
    else
      render json: @universidad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /universidads/1
  def destroy
    @universidad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_universidad
      @universidad = Universidad.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def universidad_params
      params.require(:universidad).permit(:nombre, :ciudad_id, :acreditacion_institucional, :caracter_id, :direccion, :logo)
    end
end
