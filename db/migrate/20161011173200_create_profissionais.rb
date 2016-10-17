class CreateProfissionais < ActiveRecord::Migration
  def change
    create_table :profissionais do |t|
      t.references :areas_profissional, index: true, foreign_key: true
      t.references :profissoes_profissional, index: true, foreign_key: true
      t.string :nome_completo
      t.string :nome_comercial
      t.integer :whatsapp
      t.integer :celular
      t.string :email
      t.text :endereco

      t.timestamps null: false
    end
  end
end
