class UsuarioMsController < ApplicationController
  before_action :set_usuario_m, only: [:show, :update, :destroy]

  # GET /usuario_ms
  def index
    @usuario_ms = UsuarioM.all

    render json: @usuario_ms
  end

  # GET /usuario_ms/1
  def show
    render json: @usuario_m
  end

  # POST /usuario_ms
  def create
    @usuario_m = UsuarioM.new(usuario_m_params)

    if @usuario_m.save
      render json: @usuario_m, status: :created, location: @usuario_m
    else
      render json: @usuario_m.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuario_ms/1
  def update
    if @usuario_m.update(usuario_m_params)
      render json: @usuario_m
    else
      render json: @usuario_m.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuario_ms/1
  def destroy
    @usuario_m.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_m
      @usuario_m = UsuarioM.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usuario_m_params
      params.require(:usuario_m).permit(:nombre, :email, :telefono, :clave, :calificacion, :rango)
    end
end
