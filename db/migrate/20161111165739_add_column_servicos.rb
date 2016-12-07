class AddColumnServicos < ActiveRecord::Migration
  def change
  	add_reference :servicos, :profissoes_profissionais, index: true
  end
end
