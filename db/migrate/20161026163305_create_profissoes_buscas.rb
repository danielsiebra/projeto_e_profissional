class CreateProfissoesBuscas < ActiveRecord::Migration
  def change
    create_table :profissoes_buscas do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
