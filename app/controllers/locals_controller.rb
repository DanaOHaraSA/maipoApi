class LocalsController < ApplicationController
  before_action :set_local, only: [:show, :update, :destroy]

  # GET /locals
  def index
    @locals = Local.where(:visible => true)

    render json: @locals
  end

  # GET /locals/1
  def show
    render json: @local
  end

  def arrendadorbysala

    @local = Local.joins(:sala).select("usuario_a_id").where("salas.id = ? AND visible = true", params[:id])

    if @local.empty?
      @isvalid = {:is_valid => false}
      render json: @is_valid
    else
    render json: @local
  end
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
    @local = Local.where("usuario_a_id = ? AND visible = true", params[:usuario_a_id])
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
      params.require(:local).permit(:usuario_a_id, :nombre, :foto, :calificacion, :descripcion, :horario, :direccion, :latitud, :longitud, :foto_file_name, :foto_content_type, :foto_file_size, :foto_updated_at, :visible, :imagenUrl)
    end
end
