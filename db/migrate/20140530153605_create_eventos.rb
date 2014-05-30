class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nome
      t.string :email_para_contato
      t.date :data
      t.date :data_terminio
      t.text :descricao
      t.string :site
      t.string :facebook

      t.timestamps
    end
  end
end
