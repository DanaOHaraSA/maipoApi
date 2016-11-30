class SalasController < ApplicationController
  before_action :set_sala, only: [:show, :update, :destroy]

  # GET /salas
  def index
    @temp = Sala.all()
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
    @sala = Sala.where("local_id = ?", params[:local_id])
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


#  def borarsalasbylocal
#    @salas = Sala.where("local_id = ?", params[:local_id]);
#    @salas.destroy
#  end

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
      params.require(:sala).permit(:local_id, :nombre, :foto, :valor, :descripcion, :backline, :largo, :ancho, :foto_file_name, :foto_content_type, :foto_file_size, :foto_updated_at)
    end
end
