class CreateBuscasProfissionais < ActiveRecord::Migration
  def change
    create_table :buscas_profissionais do |t|

      t.timestamps null: false
    end
  end
end
