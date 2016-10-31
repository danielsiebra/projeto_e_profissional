class CreateAvaliacoesServicos < ActiveRecord::Migration
  def change
    create_table :avaliacoes_servicos do |t|
      t.text :comentario
      t.string :papel
      t.integer :avaliacao

      t.timestamps null: false
    end
  end
end
