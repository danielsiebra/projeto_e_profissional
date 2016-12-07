class ClientesServicosController < ApplicationController
  before_action :set_clientes_servico, only: [:show, :edit, :update, :destroy]

  # GET /clientes_servicos
  # GET /clientes_servicos.json
  def index
    @clientes_servicos = ClientesServico.all
  end

  # GET /clientes_servicos/1
  # GET /clientes_servicos/1.json
  def show
  end

  # GET /clientes_servicos/new
  def new
    @clientes_servico = ClientesServico.new
  end

  # GET /clientes_servicos/1/edit
  def edit
  end

  # POST /clientes_servicos
  # POST /clientes_servicos.json
  def create
    @clientes_servico = ClientesServico.new(clientes_servico_params)

    respond_to do |format|
      if @clientes_servico.save
        format.html { redirect_to @clientes_servico, notice: 'Clientes servico was successfully created.' }
        format.json { render action: 'show', status: :created, location: @clientes_servico }
      else
        format.html { render action: 'new' }
        format.json { render json: @clientes_servico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes_servicos/1
  # PATCH/PUT /clientes_servicos/1.json
  def update
    respond_to do |format|
      if @clientes_servico.update(clientes_servico_params)
        format.html { redirect_to @clientes_servico, notice: 'Clientes servico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @clientes_servico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes_servicos/1
  # DELETE /clientes_servicos/1.json
  def destroy
    @clientes_servico.destroy
    respond_to do |format|
      format.html { redirect_to clientes_servicos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clientes_servico
      @clientes_servico = ClientesServico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clientes_servico_params
      params.require(:clientes_servico).permit(:nome, :email)
    end
end
