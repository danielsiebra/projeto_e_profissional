class AddColumnServicosClienteServicoId < ActiveRecord::Migration
  def change
  	add_reference :servicos, :clientes_servico, index: true
  end
end
