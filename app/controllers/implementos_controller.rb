class ImplementosController < ApplicationController
  before_action :set_implemento, only: [:show, :update, :destroy]

  # GET /implementos
  def index
    @implementos = Implemento.all

    render json: @implementos
  end

  # GET /implementos/1
  def show
    render json: @implemento
  end

  # POST /implementos
  def create
    @implemento = Implemento.new(implemento_params)

    if @implemento.save
      render json: @implemento, status: :created, location: @implemento
    else
      render json: @implemento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /implementos/1
  def update
    if @implemento.update(implemento_params)
      render json: @implemento
    else
      render json: @implemento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /implementos/1
  def destroy
    @implemento.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_implemento
      @implemento = Implemento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def implemento_params
      params.require(:implemento).permit(:local_id, :nombre, :marca, :cantidad)
    end
end
