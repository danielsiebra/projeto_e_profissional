class CreateProfissoes < ActiveRecord::Migration
  def change
    create_table :profissoes do |t|
      t.references :areas_profissional, index: true, foreign_key: true
      t.string :profissao

      t.timestamps null: false
    end
  end
end
