class ChangeColumnProfissao < ActiveRecord::Migration
  def change
  	rename_column :profissoes, :profissao, :nome_profissao
  end
end
