class ChangeColumnToWhatsapp < ActiveRecord::Migration
  def change
  	change_column :profissionais, :whatsapp, :string
  	change_column :profissionais, :celular, :string
  	add_column :profissionais, :cep, :string
  	add_column :profissionais, :rua, :string
  	add_column :profissionais, :complemento, :string
  	add_column :profissionais, :bairro, :string
  	add_column :profissionais, :numero, :string
  	add_column :profissionais, :cidade, :string
  	add_column :profissionais, :estado, :string
  end
end
