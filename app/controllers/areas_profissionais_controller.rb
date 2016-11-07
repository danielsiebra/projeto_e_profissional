class AreasProfissionaisController < ApplicationController
  before_action :set_areas_profissional, only: [:show, :edit, :update, :destroy]
  # GET /areas_profissionais
  # GET /areas_profissionais.json
  def index
    @areas_profissionais = AreasProfissional.where(:ativo => true)
  end

  # GET /areas_profissionais/1
  # GET /areas_profissionais/1.json
  def show
  end

  # GET /areas_profissionais/new
  def new
    @areas_profissional = AreasProfissional.new
  end

  # GET /areas_profissionais/1/edit
  def edit
  end

  # POST /areas_profissionais
  # POST /areas_profissionais.json
  def create
    @areas_profissional = AreasProfissional.new(areas_profissional_params)

    respond_to do |format|
      if @areas_profissional.save
        format.html { redirect_to @areas_profissional, notice: 'Área cadastrada com sucesso.' }
        format.json { render action: 'show', status: :created, location: @areas_profissional }
      else
        format.html { render :new }
        format.json { render json: @areas_profissional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /areas_profissionais/1
  # PATCH/PUT /areas_profissionais/1.json
  def update
    respond_to do |format|
      if @areas_profissional.update(areas_profissional_params)
        format.html { redirect_to @areas_profissional, notice: 'Área atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @areas_profissional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /areas_profissionais/1
  # DELETE /areas_profissionais/1.json
  def destroy
    @areas_profissional.update(ativo: false)
    respond_to do |format|
      format.html { redirect_to areas_profissionais_url, notice: 'Área deletada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_areas_profissional
      @areas_profissional = AreasProfissional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def areas_profissional_params
      params.require(:areas_profissional).permit(:area, :ativo)
    end
end
