class AddColumnAtivo < ActiveRecord::Migration
  def change
  	add_column :profissoes, :ativo, :boolean, :default => true
  	add_column :profissionais, :ativo, :boolean, :default => true
  	add_column :profissoes_profissionais, :ativo, :boolean, :default => true
  	add_column :areas_profissionais, :ativo, :boolean, :default => true
  end
end
