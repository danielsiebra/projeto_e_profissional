class BuscasProfissionaisController < ApplicationController
  before_action :set_buscas_profissional, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /buscas_profissionais
  # GET /buscas_profissionais.json
  def index
    
  end

  # GET /buscas_profissionais/1
  # GET /buscas_profissionais/1.json
  def show
  end

  # GET /buscas_profissionais/new
  def new
    @buscas_profissional = BuscasProfissional.new
  end

  # GET /buscas_profissionais/1/edit
  def edit
  end

  # POST /buscas_profissionais
  # POST /buscas_profissionais.json 
  def buscar_profissional
    @buscar_profissionais = params[:buscar_profissionais]
    @buscar_profissoes = params[:buscar_profissoes]
    @buscar_profissoes_profissionais = params[:buscar_profissoes_profissionais]

    # if !buscar_profissionais.blank?
    # params[:buscar_profissionais]
    #@busca = ProfissoesProfissional.find_by_sql("SELECT pes.profissao, pais.id, pais.nome_completo, pais.nome_comercial, pais.whatsapp, pais.celular, pais.email, pais.endereco FROM projeto_e_profissional.profissoes_profissionais as pp INNER JOIN projeto_e_profissional.profissoes as pes ON pes.id = pp.profissao_id INNER JOIN projeto_e_profissional.profissionais as pais ON pais.id = pp.profissional_id WHERE pes.ativo = true AND pes.profissao ILIKE '%#{@buscar_profissionais}%' OR pais.nome_completo ILIKE '%#{@buscar_profissionais}%'")
    # @busca = ProfissoesProfissional.select("pes.profissao, pais.nome_completo, pais.nome_comercial, pais.whatsapp, pais.celular, pais.email, pais.endereco as pp joins projeto_e_profissional.profissoes as pes ON pes.id = pp.profissao_id joins projeto_e_profissional.profissionais as pais ON pais.id = pp.profissional_id where profissoes.ativo = ? AND profissoes.profissao ILIKE ?", true, "%#{@buscar_profissionais}%") 
    @busca = ProfissoesProfissional.find_by_sql("SELECT pes.profissao, pais.id, pais.nome_completo, pais.nome_comercial, pais.whatsapp, pais.celular, pais.email, pais.endereco FROM projeto_e_profissional.profissoes_profissionais as pp INNER JOIN projeto_e_profissional.profissoes as pes ON pes.id = pp.profissao_id INNER JOIN projeto_e_profissional.profissionais as pais ON pais.id = pp.profissional_id WHERE pes.ativo = true AND pes.profissao ILIKE '%#{@buscar_profissoes}%' AND pais.nome_completo ILIKE '%#{@buscar_profissionais}%' OR pais.nome_comercial ILIKE '%#{@buscar_profissionais}%' OR pais.celular ILIKE '%#{@buscar_profissionais}%'")
    
    
    @email = Array.new
    @celular = Array.new
    @whatsapp = Array.new
    @endereco = Array.new
    @profissao = Array.new
    @nome_completo = Array.new
    @nome_comercial = Array.new

    @busca.each do |buscar|
      @profissao.push(buscar.profissao)
      @nome_completo.push(buscar.nome_completo)
      @nome_comercial.push(buscar.nome_comercial)
      @whatsapp.push(buscar.whatsapp)
      @celular.push(buscar.celular)
      @email.push(buscar.email)
      @endereco.push(buscar.endereco)
    end
    # raise @busca.inspect
    if !@busca.empty?
      render  "buscas_profissionais/exibir_profissional"
    else 
      render "buscas_profissionais/search"
    end
  end

  # PATCH/PUT /buscas_profissionais/1
  # PATCH/PUT /buscas_profissionais/1.json
  def update
    respond_to do |format|
      if @buscas_profissional.update(buscas_profissional_params)
        format.html { redirect_to @buscas_profissional, notice: 'Buscas profissional was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @buscas_profissional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buscas_profissionais/1
  # DELETE /buscas_profissionais/1.json
  def destroy
    @buscas_profissional.update(ativo: false)
    respond_to do |format|
      format.html { redirect_to buscas_profissionais_url }
      format.json { head :no_content }
    end
  end

     # def buscar_profissional
     #  profissionais = params[:buscar_profissionais]
     #  @busca = Profissional.select(:nome_completo, :nome_comercial, :whatsapp, :celular, :email, :endereco).where("nome_completo ILIKE ?", "%#{profissionais}%")
     #  @nome_completo = Array.new
     #  @profissao = Array.new
     #  render  "buscas_profissionais/exibir_busca"
      
    # end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buscas_profissional
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buscas_profissional_params
      params[:buscas_profissional]
    end

end
