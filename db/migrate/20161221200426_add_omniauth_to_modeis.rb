class AddOmniauthToModeis < ActiveRecord::Migration
  def change
    add_column :modeis, :provider, :string
    add_column :modeis, :uid, :string
  end
end
