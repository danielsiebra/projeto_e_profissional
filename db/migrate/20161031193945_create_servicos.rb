class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.string :preco
      t.string :prazo
      t.string :nome
      t.references :profissional, index: true, foreign_key: true
      t.references :registros_servicos_realizado, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
