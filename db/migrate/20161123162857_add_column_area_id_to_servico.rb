class AddColumnAreaIdToServico < ActiveRecord::Migration
  def change
  	add_column :servicos, :area_id, :integer
  end
end
