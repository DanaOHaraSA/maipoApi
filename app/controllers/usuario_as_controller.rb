class UsuarioAsController < ApplicationController
  before_action :set_usuario_a, only: [:show, :update, :destroy]

  # GET /usuario_as
  def index
    @usuario_as = UsuarioA.all

    render json: @usuario_as
  end

  # GET /usuario_as/1
  def show
    render json: @usuario_a
  end

  # POST /usuario_as
  def create
    @usuario_a = UsuarioA.new(usuario_a_params)

    if @usuario_a.save
      render json: @usuario_a, status: :created, location: @usuario_a
    else
      render json: @usuario_a.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuario_as/1
  def update
    if @usuario_a.update(usuario_a_params)
      render json: @usuario_a
    else
      render json: @usuario_a.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuario_as/1
  def destroy
    @usuario_a.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_a
      @usuario_a = UsuarioA.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usuario_a_params
      params.require(:usuario_a).permit(:nombre, :email, :telefono, :clave)
    end
end
