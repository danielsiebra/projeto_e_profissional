class AddCounterCacheToServicos < ActiveRecord::Migration
  def change
    add_column :servicos, :reviews_count, :integer
  end
end
