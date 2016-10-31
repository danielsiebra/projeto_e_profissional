class CreateSolicitacoesAvaliacoesServicos < ActiveRecord::Migration
  def change
    create_table :solicitacoes_avaliacoes_servicos do |t|
      t.string :nome_cliente
      t.string :email
      t.string :papel
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
