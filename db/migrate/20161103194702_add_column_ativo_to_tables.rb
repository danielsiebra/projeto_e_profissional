class AddColumnAtivoToTables < ActiveRecord::Migration
  def change
  	add_column :registros_servicos_realizados, :ativo, :boolean, :default => true
  	add_column :clientes, :ativo, :boolean, :default => true
  	add_column :avaliacoes_servicos, :ativo, :boolean, :default => true
  	add_column :servicos, :ativo, :boolean, :default => true
  	add_column :solicitacoes_avaliacoes_servicos, :ativo, :boolean, :default => true
  	add_column :usuarios, :ativo, :boolean, :default => true
  end
end
