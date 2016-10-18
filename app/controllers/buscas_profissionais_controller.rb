class BuscasProfissionaisController < ApplicationController
  before_action :set_buscas_profissional, only: [:show, :edit, :update, :destroy]

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
    
    @nome_completo = Array.new
    @nome_comercial = Array.new
    @whatsapp = Array.new
    @celular = Array.new
    @email = Array.new
    @endereco = Array.new
    # if !buscar_profissionais.blank?
    @busca = Profissional.select(:nome_completo, :nome_comercial, :whatsapp, :celular, :email, :endereco).where("ativo = ? AND nome_completo ILIKE ?", true, "%#{@buscar_profissionais}%") 
    @busca.each do |p|
      @nome_completo.push(p.nome_completo)
      @nome_comercial.push(p.nome_comercial)
      @whatsapp.push(p.whatsapp)
      @celular.push(p.celular)
      @email.push(p.email)
      @endereco.push(p.endereco)
    end 
    # @nome_completo = Array.new
    # @nome_comercial = Array.new
    # @whatsapp = Array.new
    # @celular = Array.new
    # @email = Array.new
    # @endereco = Array.new  
    # else 
    #   flash[:notice] = "Sem profissionais com esse nome."
    #   flash[:tipo_msg] = "Erro."
    # end

    render  "buscas_profissionais/exibir_busca"
    # @nome_comercial = Array.new
    # @whatsapp = Array.new
    # @celular = Array.new
    # @email = Array.new
    # @endereco = Array.new
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
      @buscas_profissional = BuscasProfissional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buscas_profissional_params
      params[:buscas_profissional]
    end

end
