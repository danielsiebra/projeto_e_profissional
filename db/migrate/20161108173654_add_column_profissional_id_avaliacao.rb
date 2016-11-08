class AddColumnProfissionalIdAvaliacao < ActiveRecord::Migration
  def change
  	add_column :avaliacoes_servicos, :profissional_id, :integer
  end
end
