class CreateProfissoesProfissionais < ActiveRecord::Migration
  def change
    create_table :profissoes_profissionais do |t|
      t.references :areas_profissional, index: true, foreign_key: true
      t.references :profissao, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
