class CaractersController < ApplicationController
  before_action :set_caracter, only: [:show, :update, :destroy]

  # GET /caracters
  def index
    @caracters = Caracter.all

    render json: @caracters
  end

  # GET /caracters/1
  def show
    render json: @caracter
  end

  # POST /caracters
  def create
    @caracter = Caracter.new(caracter_params)

    if @caracter.save
      render json: @caracter, status: :created, location: @caracter
    else
      render json: @caracter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /caracters/1
  def update
    if @caracter.update(caracter_params)
      render json: @caracter
    else
      render json: @caracter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /caracters/1
  def destroy
    @caracter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caracter
      @caracter = Caracter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def caracter_params
      params.require(:caracter).permit(:caracter_institucion)
    end
end
