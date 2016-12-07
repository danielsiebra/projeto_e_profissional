class AddColumnToRegistrosServicosRealizados < ActiveRecord::Migration
  def change
  	add_column :registros_servicos_realizados, :profissoes_profissional_id, :integer
  end
end
