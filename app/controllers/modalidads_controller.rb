class ModalidadsController < ApplicationController
  before_action :set_modalidad, only: [:show, :update, :destroy]

  # GET /modalidads
  def index
    @modalidads = Modalidad.all

    render json: @modalidads
  end

  # GET /modalidads/1
  def show
    render json: @modalidad
  end

  # POST /modalidads
  def create
    @modalidad = Modalidad.new(modalidad_params)

    if @modalidad.save
      render json: @modalidad, status: :created, location: @modalidad
    else
      render json: @modalidad.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /modalidads/1
  def update
    if @modalidad.update(modalidad_params)
      render json: @modalidad
    else
      render json: @modalidad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /modalidads/1
  def destroy
    @modalidad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modalidad
      @modalidad = Modalidad.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def modalidad_params
      params.require(:modalidad).permit(:modalidad)
    end
end
