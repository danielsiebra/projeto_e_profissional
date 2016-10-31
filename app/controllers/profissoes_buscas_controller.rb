class ProfissoesBuscasController < ApplicationController
  before_action :set_profissoes_busca, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_model!
  # GET /profissoes_buscas
  # GET /profissoes_buscas.json
  def index
    @profissoes_buscas = ProfissoesBusca.all
  end

  # GET /profissoes_buscas/1
  # GET /profissoes_buscas/1.json
  def show
  end

  # GET /profissoes_buscas/new
  def new
    @profissoes_busca = ProfissoesBusca.new
  end

  # GET /profissoes_buscas/1/edit
  def edit
  end

  # POST /profissoes_buscas
  # POST /profissoes_buscas.json
  def create
    @profissoes_busca = ProfissoesBusca.new(profissoes_busca_params)

    respond_to do |format|
      if @profissoes_busca.save
        format.html { redirect_to @profissoes_busca, notice: 'Profissoes busca was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profissoes_busca }
      else
        format.html { render action: 'new' }
        format.json { render json: @profissoes_busca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profissoes_buscas/1
  # PATCH/PUT /profissoes_buscas/1.json
  def update
    respond_to do |format|
      if @profissoes_busca.update(profissoes_busca_params)
        format.html { redirect_to @profissoes_busca, notice: 'Profissoes busca was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profissoes_busca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profissoes_buscas/1
  # DELETE /profissoes_buscas/1.json
  def destroy
    @profissoes_busca.destroy
    respond_to do |format|
      format.html { redirect_to profissoes_buscas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profissoes_busca
      @profissoes_busca = ProfissoesBusca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profissoes_busca_params
      params.require(:profissoes_busca).permit(:nome)
    end
end
