class NivelsController < ApplicationController
  before_action :set_nivel, only: [:show, :update, :destroy]

  # GET /nivels
  def index
    @nivels = Nivel.all

    render json: @nivels
  end

  # GET /nivels/1
  def show
    render json: @nivel
  end

  # POST /nivels
  def create
    @nivel = Nivel.new(nivel_params)

    if @nivel.save
      render json: @nivel, status: :created, location: @nivel
    else
      render json: @nivel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nivels/1
  def update
    if @nivel.update(nivel_params)
      render json: @nivel
    else
      render json: @nivel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nivels/1
  def destroy
    @nivel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nivel
      @nivel = Nivel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nivel_params
      params.require(:nivel).permit(:nivel_formacion)
    end
end
