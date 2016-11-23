class LocalsController < ApplicationController
  before_action :set_local, only: [:show, :update, :destroy]

  # GET /locals
  def index
    @locals = Local.all

    render json: @locals
  end

  # GET /locals/1
  def show
    render json: @local
  end

  def arrendadorbysala

    @local = Local.select("usuario_a_id").joins("INNER JOIN salas").where("locals.id = salas.local_id AND salas.id = ?", params[:id])
    render json: @local
  end





  # POST /locals
  def create
    @local = Local.new(local_params)

    if @local.save
      render json: @local, status: :created, location: @local
    else
      render json: @local.errors, status: :unprocessable_entity
    end
  end

  def localsbyarrendador
    @local = Local.where("usuario_a_id = ?", params[:usuario_a_id])
    render json: @local
  end

  # PATCH/PUT /locals/1
  def update
    if @local.update(local_params)
      render json: @local
    else
      render json: @local.errors, status: :unprocessable_entity
    end
  end

  # DELETE /locals/1
  def destroy
    @local.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_local
      @local = Local.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def local_params
      params.require(:local).permit(:usuario_a_id, :nombre, :foto, :calificacion, :descripcion, :horario, :direccion, :latitud, :longitud)
    end
end
