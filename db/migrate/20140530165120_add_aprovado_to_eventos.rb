class AddAprovadoToEventos < ActiveRecord::Migration
  def change
    add_column :eventos, :aprovado, :boolean, default: false
  end
end
