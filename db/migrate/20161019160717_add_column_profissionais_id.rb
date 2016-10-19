class AddColumnProfissionaisId < ActiveRecord::Migration
  def change
  	add_column :buscas_profissionais, :profissional_id, :integer
  end
end
