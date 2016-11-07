class AddColumnDescricaoServicos < ActiveRecord::Migration
  def change
  	add_column :servicos, :descricao, :text
  end
end
