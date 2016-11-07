class ChangecolumnDeAndAteToRegistrarServicos < ActiveRecord::Migration
  def change
  	change_column :registros_servicos_realizados, :de, :string
  	change_column :registros_servicos_realizados, :ate, :string
  end
end
