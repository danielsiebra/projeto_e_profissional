class AddColumnProfissionalIdToProfissoesProfissionais < ActiveRecord::Migration
  def change
  	add_column :profissoes_profissionais, :profissional_id, :integer
  end
end
