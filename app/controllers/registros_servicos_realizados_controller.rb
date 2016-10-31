class RegistrosServicosRealizadosController < ApplicationController
  before_action :set_registros_servicos_realizado, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_model!
  # GET /registros_servicos_realizados
  # GET /registros_servicos_realizados.json
  def index
    @registros_servicos_realizados = RegistrosServicosRealizado.all
  end

  # GET /registros_servicos_realizados/1
  # GET /registros_servicos_realizados/1.json
  def show
  end

  # GET /registros_servicos_realizados/new
  def new
    @registros_servicos_realizado = RegistrosServicosRealizado.new
  end

  # GET /registros_servicos_realizados/1/edit
  def edit
  end

  # POST /registros_servicos_realizados
  # POST /registros_servicos_realizados.json
  def create
    @registros_servicos_realizado = RegistrosServicosRealizado.new(registros_servicos_realizado_params)

    respond_to do |format|
      if @registros_servicos_realizado.save
        format.html { redirect_to @registros_servicos_realizado, notice: 'Registros servicos realizado was successfully created.' }
        format.json { render action: 'show', status: :created, location: @registros_servicos_realizado }
      else
        format.html { render action: 'new' }
        format.json { render json: @registros_servicos_realizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registros_servicos_realizados/1
  # PATCH/PUT /registros_servicos_realizados/1.json
  def update
    respond_to do |format|
      if @registros_servicos_realizado.update(registros_servicos_realizado_params)
        format.html { redirect_to @registros_servicos_realizado, notice: 'Registros servicos realizado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @registros_servicos_realizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registros_servicos_realizados/1
  # DELETE /registros_servicos_realizados/1.json
  def destroy
    @registros_servicos_realizado.destroy
    respond_to do |format|
      format.html { redirect_to registros_servicos_realizados_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registros_servicos_realizado
      @registros_servicos_realizado = RegistrosServicosRealizado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registros_servicos_realizado_params
      params.require(:registros_servicos_realizado).permit(:profissional_id, :titulo_servico, :nome_cliente, :email_cliente, :descricao_servico, :de, :ate)
    end
end
