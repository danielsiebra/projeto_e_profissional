class AddOmniauthToUseres < ActiveRecord::Migration
  def change
    add_column :useres, :provider, :string
    add_column :useres, :uid, :string
  end
end
