class AddColumnServicoIdAvaliacao < ActiveRecord::Migration
  def change
  	add_column :avaliacoes_servicos, :servico_id, :integer
  end
end
