class CreateClientesServicos < ActiveRecord::Migration
  def change
    create_table :clientes_servicos do |t|
      t.string :nome
      t.string :email

      t.timestamps null: false
    end
  end
end
