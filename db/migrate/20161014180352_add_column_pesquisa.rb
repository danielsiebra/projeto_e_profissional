class AddColumnPesquisa < ActiveRecord::Migration
  def change
  	add_column :buscas_profissionais, :pesquisa, :string
  end
end
