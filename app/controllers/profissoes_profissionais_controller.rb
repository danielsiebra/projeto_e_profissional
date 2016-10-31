class ProfissoesProfissionaisController < ApplicationController
  before_action :set_profissoes_profissional, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_model!
  # GET /profissoes_profissionais
  # GET /profissoes_profissionais.json
  def index
    @profissoes_profissionais = ProfissoesProfissional.where(:ativo => true)
  end

  # GET /profissoes_profissionais/1
  # GET /profissoes_profissionais/1.json
  def show
  end

  # GET /profissoes_profissionais/new
  def new
    @profissoes_profissional = ProfissoesProfissional.new
  end

  # GET /profissoes_profissionais/1/edit
  def edit
  end

  # POST /profissoes_profissionais
  # POST /profissoes_profissionais.json
  def create
    @profissoes_profissional = ProfissoesProfissional.new(profissoes_profissional_params)

    respond_to do |format|
      if @profissoes_profissional.save
        format.html { redirect_to @profissoes_profissional, notice: 'Profissoes profissional was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profissoes_profissional }
      else
        format.html { render action: 'new' }
        format.json { render json: @profissoes_profissional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profissoes_profissionais/1
  # PATCH/PUT /profissoes_profissionais/1.json
  def update
    respond_to do |format|
      if @profissoes_profissional.update(profissoes_profissional_params)
        format.html { redirect_to @profissoes_profissional, notice: 'Profissoes profissional was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profissoes_profissional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profissoes_profissionais/1
  # DELETE /profissoes_profissionais/1.json
  def destroy
    @profissoes_profissional.update(ativo: false)
    respond_to do |format|
      format.html { redirect_to profissoes_profissionais_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profissoes_profissional
      @profissoes_profissional = ProfissoesProfissional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profissoes_profissional_params
      params.require(:profissoes_profissional).permit(:profissional_id, :profissao_id, :ativo)
    end
end
