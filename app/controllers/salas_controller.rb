class SalasController < ApplicationController
  before_action :set_sala, only: [:show, :update, :destroy]

  # GET /salas
  def index
    @temp = Sala.where(:visible => true)
    @salas = @temp.order(:valor)
    render json: @salas
  end

  # GET /salas/1
  def show
    render json: @sala
  end

  # POST /salas
  def create
    @sala = Sala.new(sala_params)

    if @sala.save
      render json: @sala, status: :created, location: @sala
    else
      render json: @sala.errors, status: :unprocessable_entity
    end
  end

  def salasbylocal
    @sala = Sala.where("local_id = ? AND visible = true", params[:local_id])
    render json: @sala
  end

  def solicitdesporidarrendador
    @sala = Sala.joins(:solicitud, :local).select("solicituds.*").where("locals.usuario_a_id = usuario_a_id AND locals.id = salas.local_id AND salas.id = solicituds.sala_id AND solicituds.estado = estado AND salas.visible = true",{usuario_a_id: params[:usuario_a_id], visible: params[:visible]})
    render json: @sala
  end



  # PATCH/PUT /salas/1
  def update
    if @sala.update(sala_params)
      render json: @sala
    else
      render json: @sala.errors, status: :unprocessable_entity
    end
  end



  # DELETE /salas/1
  def destroy
    @sala.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sala
      @sala = Sala.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sala_params
      params.require(:sala).permit(:local_id, :nombre, :foto, :valor, :descripcion, :backline, :largo, :ancho, :roomCalendarUrl, :foto_file_name, :foto_content_type, :foto_file_size, :foto_updated_at, :visible, :imagenUrl)
    end
end
