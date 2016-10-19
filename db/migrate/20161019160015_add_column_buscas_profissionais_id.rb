class AddColumnBuscasProfissionaisId < ActiveRecord::Migration
  def change
  	add_column :profissionais, :buscas_profissional_id, :integer
  end
end
