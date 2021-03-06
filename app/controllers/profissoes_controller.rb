class ProfissoesController < ApplicationController
  before_action :set_profissao, only: [:show, :edit, :update, :destroy]
  # GET /profissoes
  # GET /profissoes.json
  def index
    @profissoes = Profissao.where(:ativo => true)
  end

  # GET /profissoes/1
  # GET /profissoes/1.json
  def show
  end

  # GET /profissoes/new
  def new
    @profissao = Profissao.new
  end

  # GET /profissoes/1/edit
  def edit
  end

  # POST /profissoes
  # POST /profissoes.json
  def create
    @profissao = Profissao.new(profissao_params)

    respond_to do |format|
      if @profissao.save
        format.html { redirect_to @profissao, notice: 'Profissao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profissao }
      else
        format.html { render action: 'new' }
        format.json { render json: @profissao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profissoes/1
  # PATCH/PUT /profissoes/1.json
  def update
    respond_to do |format|
      if @profissao.update(profissao_params)
        format.html { redirect_to @profissao, notice: 'Profissao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profissao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profissoes/1
  # DELETE /profissoes/1.json
  def destroy
    @profissao.update(ativo: false)
    respond_to do |format|
      format.html { redirect_to profissoes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profissao
      @profissao = Profissao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profissao_params
      params.require(:profissao).permit(:areas_profissional_id, :nome_profissao, :ativo)
    end
end
