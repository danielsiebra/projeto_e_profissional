class SolicitacoesAvaliacoesServicosController < ApplicationController
  before_action :set_solicitacoes_avaliacoes_servico, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_model!
  # GET /solicitacoes_avaliacoes_servicos
  # GET /solicitacoes_avaliacoes_servicos.json
  def index
    @solicitacoes_avaliacoes_servicos = SolicitacoesAvaliacoesServico.all
  end

  # GET /solicitacoes_avaliacoes_servicos/1
  # GET /solicitacoes_avaliacoes_servicos/1.json
  def show
  end

  # GET /solicitacoes_avaliacoes_servicos/new
  def new
    @solicitacoes_avaliacoes_servico = SolicitacoesAvaliacoesServico.new
  end

  # GET /solicitacoes_avaliacoes_servicos/1/edit
  def edit
  end

  # POST /solicitacoes_avaliacoes_servicos
  # POST /solicitacoes_avaliacoes_servicos.json
  def create
    @solicitacoes_avaliacoes_servico = SolicitacoesAvaliacoesServico.new(solicitacoes_avaliacoes_servico_params)

    respond_to do |format|
      if @solicitacoes_avaliacoes_servico.save
        format.html { redirect_to @solicitacoes_avaliacoes_servico, notice: 'Solicitacoes avaliacoes servico was successfully created.' }
        format.json { render action: 'show', status: :created, location: @solicitacoes_avaliacoes_servico }
      else
        format.html { render action: 'new' }
        format.json { render json: @solicitacoes_avaliacoes_servico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitacoes_avaliacoes_servicos/1
  # PATCH/PUT /solicitacoes_avaliacoes_servicos/1.json
  def update
    respond_to do |format|
      if @solicitacoes_avaliacoes_servico.update(solicitacoes_avaliacoes_servico_params)
        format.html { redirect_to @solicitacoes_avaliacoes_servico, notice: 'Solicitacoes avaliacoes servico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @solicitacoes_avaliacoes_servico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitacoes_avaliacoes_servicos/1
  # DELETE /solicitacoes_avaliacoes_servicos/1.json
  def destroy
    @solicitacoes_avaliacoes_servico.destroy
    respond_to do |format|
      format.html { redirect_to solicitacoes_avaliacoes_servicos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitacoes_avaliacoes_servico
      @solicitacoes_avaliacoes_servico = SolicitacoesAvaliacoesServico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitacoes_avaliacoes_servico_params
      params.require(:solicitacoes_avaliacoes_servico).permit(:nome_cliente, :email, :papel, :usuario_id)
    end
end
