class AddColumnServicosClienteId < ActiveRecord::Migration
  def change
  	add_reference :servicos, :cliente, index: true
  end
end
