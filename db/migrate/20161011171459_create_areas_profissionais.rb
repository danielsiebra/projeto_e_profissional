class CreateAreasProfissionais < ActiveRecord::Migration
  def change
    create_table :areas_profissionais do |t|
      t.string :area

      t.timestamps null: false
    end
  end
end
