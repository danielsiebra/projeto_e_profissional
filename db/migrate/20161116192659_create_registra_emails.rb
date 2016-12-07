class CreateRegistraEmails < ActiveRecord::Migration
  def self.up
    create_table :registra_emails do |t|
    	t.string :email
    	t.string :comentario
    	t.string :remetente
      t.timestamps null: false
    end
  end
end
