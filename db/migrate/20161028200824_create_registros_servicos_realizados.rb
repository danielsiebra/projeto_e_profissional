class CreateRegistrosServicosRealizados < ActiveRecord::Migration
  def change
    create_table :registros_servicos_realizados do |t|
      t.references :profissional, index: true, foreign_key: true
      t.string :titulo_servico
      t.string :nome_cliente
      t.string :email_cliente
      t.text :descricao_servico
      t.date :de
      t.date :ate

      t.timestamps null: false
    end
  end
end
