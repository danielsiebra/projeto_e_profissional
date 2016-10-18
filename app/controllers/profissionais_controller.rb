class ProfissionaisController < ApplicationController
  before_action :set_profissional, only: [:show, :edit, :update, :destroy]

  # GET /profissionais
  # GET /profissionais.json
  def index
    @profissionais = Profissional.where(:ativo => true)
  end

  # GET /profissionais/1
  # GET /profissionais/1.json
  def show
  end

  # GET /profissionais/new
  def new
    @profissional = Profissional.new
  end

  # GET /profissionais/1/edit
  def edit
  end

  # POST /profissionais
  # POST /profissionais.json
  def create
    @profissional = Profissional.new(profissional_params)

    respond_to do |format|
      if @profissional.save
        format.html { redirect_to @profissional, notice: 'Profissional was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profissional }
      else
        format.html { render action: 'new' }
        format.json { render json: @profissional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profissionais/1
  # PATCH/PUT /profissionais/1.json
  def update
    respond_to do |format|
      if @profissional.update(profissional_params)
        format.html { redirect_to @profissional, notice: 'Profissional was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profissional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profissionais/1
  # DELETE /profissionais/1.json
  def destroy
    @profissional.update(ativo: false)
    respond_to do |format|
      format.html { redirect_to profissionais_url, notice: 'Profissional deletado com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profissional
      @profissional = Profissional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profissional_params
      params.require(:profissional).permit(:areas_profissional_id, :profissoes_profissional_id, :nome_completo, :nome_comercial, :whatsapp, :celular, :email, :endereco, :ativo)
    end
end
