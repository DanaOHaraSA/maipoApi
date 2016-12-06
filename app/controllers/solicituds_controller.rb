class SolicitudsController < ApplicationController
  before_action :set_solicitud, only: [:show, :update, :destroy]

  # GET /solicituds
  def index
    @solicituds = Solicitud.all

    render json: @solicituds
  end

  def solicitudbymusico

    @solicitud = Solicitud.where("usuario_m_id = ?", params[:usuario_m_id])
    render json: @solicitud

  end

  def solicitudbysala

    @solicitud = Solicitud.where("sala_id = ?", params[:sala_id])
    render json: @solicitud

  end

  # GET /solicituds/1
  def show
    render json: @solicitud
  end

  # POST /solicituds
  def create
    @solicitud = Solicitud.new(solicitud_params)

    if @solicitud.save
      render json: @solicitud, status: :created, location: @solicitud
    else
      render json: @solicitud.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /solicituds/1
  def update
    if @solicitud.update(solicitud_params)
      render json: @solicitud
    else
      render json: @solicitud.errors, status: :unprocessable_entity
    end
  end

  # DELETE /solicituds/1
  def destroy
    @solicitud.destroy
  end

  def solicitudesporidlocal
    @solicitud = Solicitud.joins(:sala).where("salas.local_id = ? and salas.visible = true", params[:local_id])
    if @solicitud.empty?
    @temp  = {:is_valid => false}
    render json: @temp
    else
    render json: @solicitud
    end
  end

  def solicitudesporidmusico
    @solicitud = Solicitud.where("usuario_m_id = :usuario_m_id and estado = :estado",{usuario_m_id: params[:usuario_m_id], estado: params[:estado]})
    if @solicitud.empty?
    @temp  = {:is_valid => false}
    render json: @temp
    else
    render json: @solicitud
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud
      @solicitud = Solicitud.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def solicitud_params
      params.require(:solicitud).permit(:usuario_m_id, :sala_id, :implemento_id, :estado, :year, :dia, :visto, :mes, :beginhour, :endhour, :nombreSala, :nombreLocal, :imagenUrlMusico, :fono, :nombreMusico, :calificacion)

    end
end
