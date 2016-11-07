class AddColumnServicoIdToRegistrarServicos < ActiveRecord::Migration
  def change
  	add_column :registros_servicos_realizados, :servico_id, :integer
  end
end
