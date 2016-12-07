class CreateServicosProfissionais < ActiveRecord::Migration
  def change
    create_table :servicos_profissionais do |t|
      t.references :servico, index: true, foreign_key: true
      t.references :profissoes_profissional, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
