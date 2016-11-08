class AvaliacoesServicosController < ApplicationController
  before_action :set_avaliacoes_servico, only: [:show, :edit, :update, :destroy]
  # GET /avaliacoes_servicos
  # GET /avaliacoes_servicos.json
  def index
    @avaliacoes_servicos = AvaliacoesServico.all
  end

  # GET /avaliacoes_servicos/1
  # GET /avaliacoes_servicos/1.json
  def show
  end

  # GET /avaliacoes_servicos/new
  def new
    @avaliacoes_servico = AvaliacoesServico.new
  end

  # GET /avaliacoes_servicos/1/edit
  def edit
  end

  # POST /avaliacoes_servicos
  # POST /avaliacoes_servicos.json
  def create
    @avaliacoes_servico = AvaliacoesServico.new(avaliacoes_servico_params)

    respond_to do |format|
      if @avaliacoes_servico.save
        format.html { redirect_to @avaliacoes_servico, notice: 'Avaliacoes servico was successfully created.' }
        format.json { render action: 'show', status: :created, location: @avaliacoes_servico }
      else
        format.html { render action: 'new' }
        format.json { render json: @avaliacoes_servico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avaliacoes_servicos/1
  # PATCH/PUT /avaliacoes_servicos/1.json
  def update
    respond_to do |format|
      if @avaliacoes_servico.update(avaliacoes_servico_params)
        format.html { redirect_to @avaliacoes_servico, notice: 'Avaliacoes servico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @avaliacoes_servico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avaliacoes_servicos/1
  # DELETE /avaliacoes_servicos/1.json
  def destroy
    @avaliacoes_servico.update(ativo: false)
    respond_to do |format|
      format.html { redirect_to avaliacoes_servicos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avaliacoes_servico
      @avaliacoes_servico = AvaliacoesServico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avaliacoes_servico_params
      params.require(:avaliacoes_servico).permit(:comentario, :papel, :avaliacao, :servico_id, :profissional_id)
    end
end
